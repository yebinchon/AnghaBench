
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {scalar_t__ auth_digest; scalar_t__ auth_password; scalar_t__ auth_user; } ;
struct TYPE_3__ {int (* register_server_variables ) (int *) ;} ;
typedef int HashTable ;


 int * PG (int ) ;
 TYPE_2__ SG (int ) ;
 size_t TRACK_VARS_SERVER ;
 int ZVAL_DOUBLE (int *,int ) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_STRING (int *,scalar_t__) ;
 int * Z_ARRVAL_P (int *) ;
 int Z_DVAL (int ) ;
 int array_init (int *) ;
 int http_globals ;
 int php_register_variable_quick (char*,int,int *,int *) ;
 int request_info ;
 int sapi_get_request_time () ;
 TYPE_1__ sapi_module ;
 int stub1 (int *) ;
 int zend_dval_to_lval (int ) ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static inline void php_register_server_variables(void)
{
 zval tmp;
 zval *arr = &PG(http_globals)[TRACK_VARS_SERVER];
 HashTable *ht;

 zval_ptr_dtor_nogc(arr);
 array_init(arr);


 if (sapi_module.register_server_variables) {
  sapi_module.register_server_variables(arr);
 }
 ht = Z_ARRVAL_P(arr);


 if (SG(request_info).auth_user) {
  ZVAL_STRING(&tmp, SG(request_info).auth_user);
  php_register_variable_quick("PHP_AUTH_USER", sizeof("PHP_AUTH_USER")-1, &tmp, ht);
 }
 if (SG(request_info).auth_password) {
  ZVAL_STRING(&tmp, SG(request_info).auth_password);
  php_register_variable_quick("PHP_AUTH_PW", sizeof("PHP_AUTH_PW")-1, &tmp, ht);
 }
 if (SG(request_info).auth_digest) {
  ZVAL_STRING(&tmp, SG(request_info).auth_digest);
  php_register_variable_quick("PHP_AUTH_DIGEST", sizeof("PHP_AUTH_DIGEST")-1, &tmp, ht);
 }


 ZVAL_DOUBLE(&tmp, sapi_get_request_time());
 php_register_variable_quick("REQUEST_TIME_FLOAT", sizeof("REQUEST_TIME_FLOAT")-1, &tmp, ht);
 ZVAL_LONG(&tmp, zend_dval_to_lval(Z_DVAL(tmp)));
 php_register_variable_quick("REQUEST_TIME", sizeof("REQUEST_TIME")-1, &tmp, ht);
}
