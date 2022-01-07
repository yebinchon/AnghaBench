
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int socklen_t ;
struct TYPE_5__ {int bsd_socket; } ;
typedef TYPE_1__ php_socket ;
typedef int ov ;
typedef int if_index ;


 int E_WARNING ;
 int FAILURE ;



 int IS_TRUE ;






 int PHP_SOCKET_ERROR (TYPE_1__*,char*,int ) ;
 int SUCCESS ;
 long Z_LVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int convert_to_boolean_ex (int *) ;
 int convert_to_long_ex (int *) ;
 int errno ;
 int php_do_mcast_opt (TYPE_1__*,int,int,int *) ;
 int php_error_docref (int *,int ,char*) ;
 int php_get_if_index_from_zval (int *,unsigned int*) ;
 int setsockopt (int ,int,int,void*,int) ;

int php_do_setsockopt_ipv6_mcast(php_socket *php_sock,
         int level,
         int optname,
         zval *arg4)
{
 unsigned int if_index;
 void *opt_ptr;
 socklen_t optlen;
 int ov;
 int retval;

 switch (optname) {
 case 132:
 case 130:






  if (php_do_mcast_opt(php_sock, level, optname, arg4) == FAILURE) {
   return FAILURE;
  } else {
   return SUCCESS;
  }

 case 135:
  if (php_get_if_index_from_zval(arg4, &if_index) == FAILURE) {
   return FAILURE;
  }

  opt_ptr = &if_index;
  optlen = sizeof(if_index);
  goto dosockopt;

 case 134:
  convert_to_boolean_ex(arg4);
  ov = (int) Z_TYPE_P(arg4) == IS_TRUE;
  goto ipv6_loop_hops;
 case 136:
  convert_to_long_ex(arg4);
  if (Z_LVAL_P(arg4) < -1L || Z_LVAL_P(arg4) > 255L) {
   php_error_docref(((void*)0), E_WARNING,
     "Expected a value between -1 and 255");
   return FAILURE;
  }
  ov = (int) Z_LVAL_P(arg4);
ipv6_loop_hops:
  opt_ptr = &ov;
  optlen = sizeof(ov);
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
