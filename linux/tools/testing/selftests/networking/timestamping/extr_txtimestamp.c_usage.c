
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void __attribute__((noreturn)) usage(const char *filepath)
{
 fprintf(stderr, "\nUsage: %s [options] hostname\n"
   "\nwhere options are:\n"
   "  -4:   only IPv4\n"
   "  -6:   only IPv6\n"
   "  -h:   show this message\n"
   "  -c N: number of packets for each test\n"
   "  -C:   use cmsg to set tstamp recording options\n"
   "  -D:   no delay between packets\n"
   "  -F:   poll() waits forever for an event\n"
   "  -I:   request PKTINFO\n"
   "  -l N: send N bytes at a time\n"
   "  -L    listen on hostname and port\n"
   "  -n:   set no-payload option\n"
   "  -p N: connect to port N\n"
   "  -P:   use PF_PACKET\n"
   "  -r:   use raw\n"
   "  -R:   use raw (IP_HDRINCL)\n"
   "  -u:   use udp\n"
   "  -v:   validate SND delay (usec)\n"
   "  -V:   validate ACK delay (usec)\n"
   "  -x:   show payload (up to 70 bytes)\n",
   filepath);
 exit(1);
}
