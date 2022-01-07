
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_bool ;
struct reserved_class_name {size_t len; scalar_t__ name; } ;


 size_t ZSTR_LEN (int const*) ;
 char* ZSTR_VAL (int const*) ;
 struct reserved_class_name* reserved_class_names ;
 scalar_t__ zend_binary_strcasecmp (char const*,size_t,scalar_t__,size_t) ;
 int zend_get_unqualified_name (int const*,char const**,size_t*) ;

__attribute__((used)) static zend_bool zend_is_reserved_class_name(const zend_string *name)
{
 const struct reserved_class_name *reserved = reserved_class_names;

 const char *uqname = ZSTR_VAL(name);
 size_t uqname_len = ZSTR_LEN(name);
 zend_get_unqualified_name(name, &uqname, &uqname_len);

 for (; reserved->name; ++reserved) {
  if (uqname_len == reserved->len
   && zend_binary_strcasecmp(uqname, uqname_len, reserved->name, reserved->len) == 0
  ) {
   return 1;
  }
 }

 return 0;
}
