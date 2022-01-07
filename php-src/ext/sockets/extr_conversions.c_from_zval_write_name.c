
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct sockaddr {int dummy; } ;
struct msghdr {int msg_namelen; struct sockaddr* msg_name; } ;
typedef int socklen_t ;
typedef int ser_context ;


 int from_zval_write_sockaddr_aux (int const*,struct sockaddr**,int *,int *) ;

__attribute__((used)) static void from_zval_write_name(const zval *zname_arr, char *msghdr_c, ser_context *ctx)
{
 struct sockaddr *sockaddr;
 socklen_t sockaddr_len;
 struct msghdr *msghdr = (struct msghdr *)msghdr_c;

 from_zval_write_sockaddr_aux(zname_arr, &sockaddr, &sockaddr_len, ctx);

 msghdr->msg_name = sockaddr;
 msghdr->msg_namelen = sockaddr_len;
}
