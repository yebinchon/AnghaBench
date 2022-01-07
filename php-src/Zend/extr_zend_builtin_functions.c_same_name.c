
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 scalar_t__ ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int zend_string_release_ex (int *,int ) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static int same_name(zend_string *key, zend_string *name)
{
 zend_string *lcname;
 int ret;

 if (key == name) {
  return 1;
 }
 if (ZSTR_LEN(key) != ZSTR_LEN(name)) {
  return 0;
 }
 lcname = zend_string_tolower(name);
 ret = memcmp(ZSTR_VAL(lcname), ZSTR_VAL(key), ZSTR_LEN(key)) == 0;
 zend_string_release_ex(lcname, 0);
 return ret;
}
