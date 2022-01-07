
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {size_t len; char* val; } ;
typedef TYPE_1__ zend_string ;
typedef int zend_bool ;


 int FAILURE ;
 int SUCCESS ;
 TYPE_1__* Z_STR_P (int *) ;

__attribute__((used)) static zend_bool php_mail_build_headers_check_field_value(zval *val)
{
 size_t len = 0;
 zend_string *value = Z_STR_P(val);



 while (len < value->len) {
  if (*(value->val+len) == '\r') {
   if (value->len - len >= 3
    && *(value->val+len+1) == '\n'
    && (*(value->val+len+2) == ' ' || *(value->val+len+2) == '\t')) {
    len += 3;
    continue;
   }
   return FAILURE;
  }
  if (*(value->val+len) == '\0') {
   return FAILURE;
  }
  len++;
 }
 return SUCCESS;
}
