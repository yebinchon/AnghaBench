
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int PRINTF_DEBUG (char*) ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int get_active_function_name () ;
 int * zend_string_extend (int *,int,int ) ;

__attribute__((used)) inline static void
php_sprintf_appendchar(zend_string **buffer, size_t *pos, char add)
{
 if ((*pos + 1) >= ZSTR_LEN(*buffer)) {
  PRINTF_DEBUG(("%s(): ereallocing buffer to %d bytes\n", get_active_function_name(), ZSTR_LEN(*buffer)));
  *buffer = zend_string_extend(*buffer, ZSTR_LEN(*buffer) << 1, 0);
 }
 PRINTF_DEBUG(("sprintf: appending '%c', pos=\n", add, *pos));
 ZSTR_VAL(*buffer)[(*pos)++] = add;
}
