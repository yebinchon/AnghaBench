
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct in_addr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_6__ {int bsd_socket; } ;
typedef TYPE_1__ php_socket ;
typedef int ipv4_mcast_ttl_lback ;
typedef int if_addr ;


 int E_WARNING ;
 int FAILURE ;



 int IS_TRUE ;






 int PHP_SOCKET_ERROR (TYPE_1__*,char*,int ) ;
 int SUCCESS ;
 long Z_LVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int convert_to_boolean_ex (int *) ;
 int convert_to_long_ex (int *) ;
 int errno ;
 int php_do_mcast_opt (TYPE_1__*,int,int,int *) ;
 int php_error_docref (int *,int ,char*) ;
 int php_get_if_index_from_zval (int *,unsigned int*) ;
 int php_if_index_to_addr4 (unsigned int,TYPE_1__*,struct in_addr*) ;
 int setsockopt (int ,int,int,void*,int) ;

int php_do_setsockopt_ip_mcast(php_socket *php_sock,
          int level,
          int optname,
          zval *arg4)
{
 unsigned int if_index;
 struct in_addr if_addr;
 void *opt_ptr;
 socklen_t optlen;
 unsigned char ipv4_mcast_ttl_lback;
 int retval;

 switch (optname) {
 case 132:
 case 130:






  if (php_do_mcast_opt(php_sock, level, optname, arg4) == FAILURE) {
   return FAILURE;
  } else {
   return SUCCESS;
  }

 case 136:
  if (php_get_if_index_from_zval(arg4, &if_index) == FAILURE) {
   return FAILURE;
  }

  if (php_if_index_to_addr4(if_index, php_sock, &if_addr) == FAILURE) {
   return FAILURE;
  }
  opt_ptr = &if_addr;
  optlen = sizeof(if_addr);
  goto dosockopt;

 case 135:
  convert_to_boolean_ex(arg4);
  ipv4_mcast_ttl_lback = (unsigned char) (Z_TYPE_P(arg4) == IS_TRUE);
  goto ipv4_loop_ttl;

 case 134:
  convert_to_long_ex(arg4);
  if (Z_LVAL_P(arg4) < 0L || Z_LVAL_P(arg4) > 255L) {
   php_error_docref(((void*)0), E_WARNING,
     "Expected a value between 0 and 255");
   return FAILURE;
  }
  ipv4_mcast_ttl_lback = (unsigned char) Z_LVAL_P(arg4);
ipv4_loop_ttl:
  opt_ptr = &ipv4_mcast_ttl_lback;
  optlen = sizeof(ipv4_mcast_ttl_lback);
  goto dosockopt;
 }

 return 1;

dosockopt:
 retval = setsockopt(php_sock->bsd_socket, level, optname, opt_ptr, optlen);
 if (retval != 0) {
  PHP_SOCKET_ERROR(php_sock, "unable to set socket option", errno);
  return FAILURE;
 }

 return SUCCESS;
}
