
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int PRINTF_DEBUG (char*) ;
 size_t ZSTR_LEN (int *) ;
 scalar_t__ ZSTR_VAL (int *) ;
 int get_active_function_name () ;
 int memcpy (scalar_t__,char*,size_t) ;
 int * zend_string_extend (int *,size_t,int ) ;

__attribute__((used)) inline static void
php_sprintf_appendchars(zend_string **buffer, size_t *pos, char *add, size_t len)
{
 if ((*pos + len) >= ZSTR_LEN(*buffer)) {
  size_t nlen = ZSTR_LEN(*buffer);

  PRINTF_DEBUG(("%s(): ereallocing buffer to %d bytes\n", get_active_function_name(), ZSTR_LEN(*buffer)));
  do {
   nlen = nlen << 1;
  } while ((*pos + len) >= nlen);
  *buffer = zend_string_extend(*buffer, nlen, 0);
 }
 PRINTF_DEBUG(("sprintf: appending \"%s\", pos=\n", add, *pos));
 memcpy(ZSTR_VAL(*buffer) + (*pos), add, len);
 *pos += len;
}
