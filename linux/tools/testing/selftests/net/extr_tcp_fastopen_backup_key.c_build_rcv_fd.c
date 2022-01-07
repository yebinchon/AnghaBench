
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sockaddr_in6 {int sin6_family; void* sin6_port; int sin6_addr; int member_0; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; TYPE_1__ sin_addr; int member_0; } ;
struct sockaddr {int dummy; } ;
typedef int qlen ;
typedef int opt ;
typedef int addr6 ;
typedef int addr4 ;




 int ARRAY_SIZE (int *) ;
 int INADDR_ANY ;
 int N_LISTEN ;
 int PORT ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOL_TCP ;
 int SO_REUSEPORT ;
 int TCP_FASTOPEN ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int errno ;
 int error (int,int ,char*,...) ;
 int htonl (int ) ;
 void* htons (int ) ;
 int in6addr_any ;
 scalar_t__ listen (int,int) ;
 int rand () ;
 int set_keys (int,int *) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int,int,int ) ;

__attribute__((used)) static void build_rcv_fd(int family, int proto, int *rcv_fds)
{
 struct sockaddr_in addr4 = {0};
 struct sockaddr_in6 addr6 = {0};
 struct sockaddr *addr;
 int opt = 1, i, sz;
 int qlen = 100;
 uint32_t keys[8];

 switch (family) {
 case 129:
  addr4.sin_family = family;
  addr4.sin_addr.s_addr = htonl(INADDR_ANY);
  addr4.sin_port = htons(PORT);
  sz = sizeof(addr4);
  addr = (struct sockaddr *)&addr4;
  break;
 case 128:
  addr6.sin6_family = 128;
  addr6.sin6_addr = in6addr_any;
  addr6.sin6_port = htons(PORT);
  sz = sizeof(addr6);
  addr = (struct sockaddr *)&addr6;
  break;
 default:
  error(1, 0, "Unsupported family %d", family);




  return;
 }
 for (i = 0; i < ARRAY_SIZE(keys); i++)
  keys[i] = rand();
 for (i = 0; i < N_LISTEN; i++) {
  rcv_fds[i] = socket(family, proto, 0);
  if (rcv_fds[i] < 0)
   error(1, errno, "failed to create receive socket");
  if (setsockopt(rcv_fds[i], SOL_SOCKET, SO_REUSEPORT, &opt,
          sizeof(opt)))
   error(1, errno, "failed to set SO_REUSEPORT");
  if (bind(rcv_fds[i], addr, sz))
   error(1, errno, "failed to bind receive socket");
  if (setsockopt(rcv_fds[i], SOL_TCP, TCP_FASTOPEN, &qlen,
          sizeof(qlen)))
   error(1, errno, "failed to set TCP_FASTOPEN");
  set_keys(rcv_fds[i], keys);
  if (proto == SOCK_STREAM && listen(rcv_fds[i], 10))
   error(1, errno, "failed to listen on receive port");
 }
}
