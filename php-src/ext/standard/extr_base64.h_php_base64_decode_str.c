
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int ZSTR_LEN (int const*) ;
 scalar_t__ ZSTR_VAL (int const*) ;
 int * php_base64_decode_ex (unsigned char const*,int ,int ) ;

__attribute__((used)) static inline zend_string *php_base64_decode_str(const zend_string *str) {
 return php_base64_decode_ex((const unsigned char*)(ZSTR_VAL(str)), ZSTR_LEN(str), 0);
}
