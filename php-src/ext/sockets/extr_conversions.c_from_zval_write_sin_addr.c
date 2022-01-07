
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct sockaddr_in {int sin_addr; int member_0; } ;
struct TYPE_4__ {int sock; } ;
typedef TYPE_1__ ser_context ;


 int ZSTR_VAL (int *) ;
 int do_from_zval_err (TYPE_1__*,char*,int ) ;
 int memcpy (char*,int *,int) ;
 int php_set_inet_addr (struct sockaddr_in*,int ,int ) ;
 int zend_tmp_string_release (int *) ;
 int * zval_get_tmp_string (int *,int **) ;

__attribute__((used)) static void from_zval_write_sin_addr(const zval *zaddr_str, char *inaddr, ser_context *ctx)
{
 int res;
 struct sockaddr_in saddr = {0};
 zend_string *addr_str, *tmp_addr_str;

 addr_str = zval_get_tmp_string((zval *) zaddr_str, &tmp_addr_str);
 res = php_set_inet_addr(&saddr, ZSTR_VAL(addr_str), ctx->sock);
 if (res) {
  memcpy(inaddr, &saddr.sin_addr, sizeof saddr.sin_addr);
 } else {

  do_from_zval_err(ctx, "could not resolve address '%s' to get an AF_INET "
    "address", ZSTR_VAL(addr_str));
 }

 zend_tmp_string_release(tmp_addr_str);
}
