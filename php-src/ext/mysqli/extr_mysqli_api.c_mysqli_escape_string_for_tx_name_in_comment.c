
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_bool ;


 int E_WARNING ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* emalloc (scalar_t__) ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ strlen (char const* const) ;

char *
mysqli_escape_string_for_tx_name_in_comment(const char * const name)
{
 char * ret = ((void*)0);
 if (name) {
  zend_bool warned = FALSE;
  const char * p_orig = name;
  char * p_copy;
  p_copy = ret = emalloc(strlen(name) + 1 + 2 + 2 + 1);
  *p_copy++ = ' ';
  *p_copy++ = '/';
  *p_copy++ = '*';
  while (1) {
   register char v = *p_orig;
   if (v == 0) {
    break;
   }
   if ((v >= '0' && v <= '9') ||
    (v >= 'a' && v <= 'z') ||
    (v >= 'A' && v <= 'Z') ||
    v == '-' ||
    v == '_' ||
    v == ' ' ||
    v == '=')
   {
    *p_copy++ = v;
   } else if (warned == FALSE) {
    php_error_docref(((void*)0), E_WARNING, "Transaction name truncated. Must be only [0-9A-Za-z\\-_=]+");
    warned = TRUE;
   }
   ++p_orig;
  }
  *p_copy++ = '*';
  *p_copy++ = '/';
  *p_copy++ = 0;
 }
 return ret;
}
