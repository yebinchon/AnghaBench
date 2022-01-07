
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_mb_reset () ;
 int php_mblen (char const*,size_t) ;

__attribute__((used)) static const char *php_fgetcsv_lookup_trailing_spaces(const char *ptr, size_t len, const char delimiter)
{
 int inc_len;
 unsigned char last_chars[2] = { 0, 0 };

 while (len > 0) {
  inc_len = (*ptr == '\0' ? 1 : php_mblen(ptr, len));
  switch (inc_len) {
   case -2:
   case -1:
    inc_len = 1;
    php_mb_reset();
    break;
   case 0:
    goto quit_loop;
   case 1:
   default:
    last_chars[0] = last_chars[1];
    last_chars[1] = *ptr;
    break;
  }
  ptr += inc_len;
  len -= inc_len;
 }
quit_loop:
 switch (last_chars[1]) {
  case '\n':
   if (last_chars[0] == '\r') {
    return ptr - 2;
   }

  case '\r':
   return ptr - 1;
 }
 return ptr;
}
