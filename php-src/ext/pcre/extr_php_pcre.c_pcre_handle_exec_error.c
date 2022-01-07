
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCRE_G ;






 int PCRE2_ERROR_UTF8_ERR1 ;
 int PCRE2_ERROR_UTF8_ERR21 ;
 int PHP_PCRE_BACKTRACK_LIMIT_ERROR ;
 int PHP_PCRE_BAD_UTF8_ERROR ;
 int PHP_PCRE_BAD_UTF8_OFFSET_ERROR ;
 int PHP_PCRE_INTERNAL_ERROR ;
 int PHP_PCRE_JIT_STACKLIMIT_ERROR ;
 int PHP_PCRE_RECURSION_LIMIT_ERROR ;

__attribute__((used)) static void pcre_handle_exec_error(int pcre_code)
{
 int preg_code = 0;

 switch (pcre_code) {
  case 129:
   preg_code = PHP_PCRE_BACKTRACK_LIMIT_ERROR;
   break;

  case 128:
   preg_code = PHP_PCRE_RECURSION_LIMIT_ERROR;
   break;

  case 131:
   preg_code = PHP_PCRE_BAD_UTF8_OFFSET_ERROR;
   break;







  default:
   if (pcre_code <= PCRE2_ERROR_UTF8_ERR1 && pcre_code >= PCRE2_ERROR_UTF8_ERR21) {
    preg_code = PHP_PCRE_BAD_UTF8_ERROR;
   } else {
    preg_code = PHP_PCRE_INTERNAL_ERROR;
   }
   break;
 }

 PCRE_G(error_code) = preg_code;
}
