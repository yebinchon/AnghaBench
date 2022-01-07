
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int * php_base64_decode_ex (unsigned char const*,size_t,int ) ;

__attribute__((used)) static inline zend_string *php_base64_decode(const unsigned char *str, size_t len) {
 return php_base64_decode_ex(str, len, 0);
}
