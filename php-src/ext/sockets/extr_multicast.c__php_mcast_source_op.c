
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int s_addr; } ;
struct ip_mreq_source {struct in_addr imr_interface; int imr_sourceaddr; int imr_multiaddr; int member_0; } ;
struct TYPE_6__ {scalar_t__ ss_family; } ;
struct group_source_req {unsigned int gsr_interface; TYPE_3__ gsr_source; TYPE_3__ gsr_group; int member_0; } ;
typedef int socklen_t ;
struct TYPE_5__ {scalar_t__ type; int bsd_socket; } ;
typedef TYPE_1__ php_socket ;
typedef int mreqs ;
typedef int gsreq ;
typedef enum source_op { ____Placeholder_source_op } source_op ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int E_WARNING ;
 scalar_t__ FAILURE ;
 int INADDR_ANY ;
 int _php_source_op_to_ipv4_op (int) ;
 int _php_source_op_to_rfc3678_op (int) ;
 int _php_source_op_to_string (int) ;
 int assert (int) ;
 int htonl (int ) ;
 int memcpy (TYPE_3__*,struct sockaddr*,int) ;
 int php_error_docref (int *,int ,char*,int ) ;
 scalar_t__ php_if_index_to_addr4 (unsigned int,TYPE_1__*,struct in_addr*) ;
 int setsockopt (int ,int,int ,char*,int) ;

__attribute__((used)) static int _php_mcast_source_op(
 php_socket *sock,
 int level,
 struct sockaddr *group,
 socklen_t group_len,
 struct sockaddr *source,
 socklen_t source_len,
 unsigned int if_index,
 enum source_op sop)
{
 if (sock->type == AF_INET) {
  struct ip_mreq_source mreqs = {0};
  struct in_addr addr;

  mreqs.imr_multiaddr = ((struct sockaddr_in*)group)->sin_addr;
  mreqs.imr_sourceaddr = ((struct sockaddr_in*)source)->sin_addr;

  assert(group_len == sizeof(struct sockaddr_in));
  assert(source_len == sizeof(struct sockaddr_in));

  if (if_index != 0) {
   if (php_if_index_to_addr4(if_index, sock, &addr) ==
     FAILURE)
    return -2;
   mreqs.imr_interface = addr;
  } else {
   mreqs.imr_interface.s_addr = htonl(INADDR_ANY);
  }

  return setsockopt(sock->bsd_socket, level,
    _php_source_op_to_ipv4_op(sop), (char*)&mreqs, sizeof(mreqs));
 }
 else {
  php_error_docref(((void*)0), E_WARNING,
   "Option %s is inapplicable to this socket type",
   _php_source_op_to_string(sop));
  return -2;
 }

}
