
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int li_read; int * hash_key; } ;
typedef TYPE_1__ MY_MYSQL ;


 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 int zend_string_release_ex (int *,int ) ;
 int zval_ptr_dtor (int *) ;

void php_clear_mysql(MY_MYSQL *mysql) {
 if (mysql->hash_key) {
  zend_string_release_ex(mysql->hash_key, 0);
  mysql->hash_key = ((void*)0);
 }
 if (!Z_ISUNDEF(mysql->li_read)) {
  zval_ptr_dtor(&(mysql->li_read));
  ZVAL_UNDEF(&mysql->li_read);
 }
}
