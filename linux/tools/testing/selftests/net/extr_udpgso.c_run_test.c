
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int tv_usec; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 int CONST_MTU_TEST ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 scalar_t__ cfg_do_connected ;
 scalar_t__ cfg_do_connectionless ;
 scalar_t__ close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 int errno ;
 int error (int,int ,char*,...) ;
 int get_path_mtu (int,int) ;
 int run_all (int,int,struct sockaddr*,int ) ;
 int set_device_mtu (int,int) ;
 int set_pmtu_discover (int,int) ;
 int set_route_mtu (int,int) ;
 scalar_t__ setsockopt (int,int ,int ,struct timeval*,int) ;
 int socket (scalar_t__,int ,int ) ;

__attribute__((used)) static void run_test(struct sockaddr *addr, socklen_t alen)
{
 struct timeval tv = { .tv_usec = 100 * 1000 };
 int fdr, fdt, val;

 fdr = socket(addr->sa_family, SOCK_DGRAM, 0);
 if (fdr == -1)
  error(1, errno, "socket r");

 if (bind(fdr, addr, alen))
  error(1, errno, "bind");


 if (setsockopt(fdr, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
  error(1, errno, "setsockopt rcv timeout");

 fdt = socket(addr->sa_family, SOCK_DGRAM, 0);
 if (fdt == -1)
  error(1, errno, "socket t");


 set_pmtu_discover(fdt, addr->sa_family == AF_INET);

 if (cfg_do_connectionless) {
  set_device_mtu(fdt, CONST_MTU_TEST);
  run_all(fdt, fdr, addr, alen);
 }

 if (cfg_do_connected) {
  set_device_mtu(fdt, CONST_MTU_TEST + 100);
  set_route_mtu(CONST_MTU_TEST, addr->sa_family == AF_INET);

  if (connect(fdt, addr, alen))
   error(1, errno, "connect");

  val = get_path_mtu(fdt, addr->sa_family == AF_INET);
  if (val != CONST_MTU_TEST)
   error(1, 0, "bad path mtu %u\n", val);

  run_all(fdt, fdr, addr, 0 );
 }

 if (close(fdt))
  error(1, errno, "close t");
 if (close(fdr))
  error(1, errno, "close r");
}
