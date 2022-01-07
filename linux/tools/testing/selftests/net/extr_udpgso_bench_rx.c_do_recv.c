
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int IPPROTO_UDP ;
 int UDP_GRO ;
 int bytes ;
 int cfg_connect_timeout_ms ;
 scalar_t__ cfg_expected_pkt_nr ;
 scalar_t__ cfg_gro_segment ;
 int cfg_rcv_timeout_ms ;
 scalar_t__ cfg_tcp ;
 scalar_t__ close (int) ;
 int do_flush_tcp (int) ;
 int do_flush_udp (int) ;
 int do_poll (int,int) ;
 int do_socket (scalar_t__) ;
 int errno ;
 int error (int,int ,char*,...) ;
 int fprintf (int ,char*,char*,int,scalar_t__) ;
 int gettimeofday_ms () ;
 int interrupted ;
 scalar_t__ packets ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int stderr ;

__attribute__((used)) static void do_recv(void)
{
 int timeout_ms = cfg_tcp ? cfg_rcv_timeout_ms : cfg_connect_timeout_ms;
 unsigned long tnow, treport;
 int fd;

 fd = do_socket(cfg_tcp);

 if (cfg_gro_segment && !cfg_tcp) {
  int val = 1;
  if (setsockopt(fd, IPPROTO_UDP, UDP_GRO, &val, sizeof(val)))
   error(1, errno, "setsockopt UDP_GRO");
 }

 treport = gettimeofday_ms() + 1000;
 do {
  do_poll(fd, timeout_ms);

  if (cfg_tcp)
   do_flush_tcp(fd);
  else
   do_flush_udp(fd);

  tnow = gettimeofday_ms();
  if (tnow > treport) {
   if (packets)
    fprintf(stderr,
     "%s rx: %6lu MB/s %8lu calls/s\n",
     cfg_tcp ? "tcp" : "udp",
     bytes >> 20, packets);
   bytes = packets = 0;
   treport = tnow + 1000;
  }

  timeout_ms = cfg_rcv_timeout_ms;

 } while (!interrupted);

 if (cfg_expected_pkt_nr && (packets != cfg_expected_pkt_nr))
  error(1, 0, "wrong packet number! got %ld, expected %d\n",
        packets, cfg_expected_pkt_nr);

 if (close(fd))
  error(1, errno, "close");
}
