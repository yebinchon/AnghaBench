
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef scalar_t__ zend_bool ;


 int PHP_JSON_OBJECT_AS_ARRAY ;
 int php_json_decode_ex (int *,char*,int,int ,int ) ;

__attribute__((used)) static inline int php_json_decode(zval *return_value, char *str, int str_len, zend_bool assoc, zend_long depth)
{
 return php_json_decode_ex(return_value, str, str_len, assoc ? PHP_JSON_OBJECT_AS_ARRAY : 0, depth);
}
