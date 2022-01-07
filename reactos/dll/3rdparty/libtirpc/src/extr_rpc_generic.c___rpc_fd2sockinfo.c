
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr {int dummy; } ;
struct __rpc_sockinfo {int si_alen; scalar_t__ si_af; int si_proto; int si_socktype; } ;
typedef int socklen_t ;
typedef int proto_info ;
struct TYPE_2__ {int iMaxSockAddr; scalar_t__ iAddressFamily; } ;
typedef TYPE_1__ WSAPROTOCOL_INFO ;
typedef int SOCKET ;
typedef scalar_t__ ADDRESS_FAMILY ;


 scalar_t__ AF_LOCAL ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_PROTOCOL_INFO ;
 int SO_TYPE ;
 int WSAGetLastError () ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 scalar_t__ getsockopt (int ,int ,int ,char*,int*) ;

int
__rpc_fd2sockinfo(SOCKET fd, struct __rpc_sockinfo *sip)
{
 socklen_t len;
 int type, proto;
 struct sockaddr_storage ss;
 len = sizeof ss;
 if (getsockname(fd, (struct sockaddr *)&ss, &len) == SOCKET_ERROR) {
  return 0;
 }

 sip->si_alen = len;

 len = sizeof type;
 if (getsockopt(fd, SOL_SOCKET, SO_TYPE, (char *)&type, &len) == SOCKET_ERROR) {

  int err = WSAGetLastError();

  return 0;
 }





  if (type == SOCK_STREAM)
   proto = IPPROTO_TCP;
  else if (type == SOCK_DGRAM)
   proto = IPPROTO_UDP;
  else
   return 0;





 sip->si_af = ss.ss_family;
 sip->si_proto = proto;
 sip->si_socktype = type;

 return 1;
}
