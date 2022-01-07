
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int s_addr; } ;
struct ipv6_mreq {unsigned int ipv6mr_interface; int ipv6mr_multiaddr; int imr_multiaddr; struct in_addr imr_interface; } ;
struct ip_mreq {unsigned int ipv6mr_interface; int ipv6mr_multiaddr; int imr_multiaddr; struct in_addr imr_interface; } ;
struct TYPE_6__ {scalar_t__ ss_family; } ;
struct group_req {unsigned int gr_interface; TYPE_3__ gr_group; int member_0; } ;
typedef int socklen_t ;
struct TYPE_5__ {scalar_t__ type; int bsd_socket; } ;
typedef TYPE_1__ php_socket ;
typedef int mreq ;
typedef int greq ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int E_WARNING ;
 scalar_t__ FAILURE ;
 int INADDR_ANY ;
 int IPV6_JOIN_GROUP ;
 int IPV6_LEAVE_GROUP ;
 int IP_ADD_MEMBERSHIP ;
 int IP_DROP_MEMBERSHIP ;
 int MCAST_JOIN_GROUP ;
 int MCAST_LEAVE_GROUP ;
 int assert (int) ;
 int htonl (int ) ;
 int memcpy (TYPE_3__*,struct sockaddr*,int) ;
 int memset (struct ipv6_mreq*,int ,int) ;
 int php_error_docref (int *,int ,char*,char*) ;
 scalar_t__ php_if_index_to_addr4 (unsigned int,TYPE_1__*,struct in_addr*) ;
 int setsockopt (int ,int,int ,char*,int) ;

__attribute__((used)) static int _php_mcast_join_leave(
 php_socket *sock,
 int level,
 struct sockaddr *group,
 socklen_t group_len,
 unsigned int if_index,
 int join)
{
 if (sock->type == AF_INET) {
  struct ip_mreq mreq;
  struct in_addr addr;
  memset(&mreq, 0, sizeof(struct ip_mreq));

  assert(group_len == sizeof(struct sockaddr_in));

  if (if_index != 0) {
   if (php_if_index_to_addr4(if_index, sock, &addr) ==
     FAILURE)
    return -2;
   mreq.imr_interface = addr;
  } else {
   mreq.imr_interface.s_addr = htonl(INADDR_ANY);
  }
  mreq.imr_multiaddr = ((struct sockaddr_in*)group)->sin_addr;
  return setsockopt(sock->bsd_socket, level,
    join ? IP_ADD_MEMBERSHIP : IP_DROP_MEMBERSHIP, (char*)&mreq,
    sizeof(mreq));
 }
 else {
  php_error_docref(((void*)0), E_WARNING,
   "Option %s is inapplicable to this socket type",
   join ? "MCAST_JOIN_GROUP" : "MCAST_LEAVE_GROUP");
  return -2;
 }

}
