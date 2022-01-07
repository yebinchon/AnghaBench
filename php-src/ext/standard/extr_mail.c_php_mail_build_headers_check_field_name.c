
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int* val; } ;
typedef TYPE_1__ zend_string ;
typedef int zend_bool ;


 int FAILURE ;
 int SUCCESS ;

__attribute__((used)) static zend_bool php_mail_build_headers_check_field_name(zend_string *key)
{
 size_t len = 0;


 while (len < key->len) {
  if (*(key->val+len) < 33 || *(key->val+len) > 126 || *(key->val+len) == ':') {
   return FAILURE;
  }
  len++;
 }
 return SUCCESS;
}
