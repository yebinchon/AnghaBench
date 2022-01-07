
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int CString ;


 int cstr_ccat (int *,char) ;
 int cstr_wccat (int *,char) ;
 int gnu_ext ;
 int isnum (int) ;
 int isoct (int) ;
 int tcc_warning (char*,int) ;

__attribute__((used)) static void parse_escape_string(CString *outstr, const uint8_t *buf, int is_long)
{
 int c, n;
 const uint8_t *p;

 p = buf;
 for (;;) {
  c = *p;
  if (c == '\0') {
   break;
  }
  if (c == '\\') {
   p++;

   c = *p;
   switch (c) {
   case '0': case '1': case '2': case '3':
   case '4': case '5': case '6': case '7':

    n = c - '0';
    p++;
    c = *p;
    if (isoct (c)) {
     n = n * 8 + c - '0';
     p++;
     c = *p;
     if (isoct (c)) {
      n = n * 8 + c - '0';
      p++;
     }
    }
    c = n;
    goto add_char_nonext;
   case 'x':
   case 'u':
   case 'U':
    p++;
    n = 0;
    for (;;) {
     c = *p;
     if (c >= 'a' && c <= 'f') {
      c = c - 'a' + 10;
     } else if (c >= 'A' && c <= 'F') {
      c = c - 'A' + 10;
     } else if (isnum (c)) {
      c = c - '0';
     } else {
      break;
     }
     n = n * 16 + c;
     p++;
    }
    c = n;
    goto add_char_nonext;
   case 'a':
    c = '\a';
    break;
   case 'b':
    c = '\b';
    break;
   case 'f':
    c = '\f';
    break;
   case 'n':
    c = '\n';
    break;
   case 'r':
    c = '\r';
    break;
   case 't':
    c = '\t';
    break;
   case 'v':
    c = '\v';
    break;
   case 'e':
    if (!gnu_ext) {
     goto invalid_escape;
    }
    c = 27;
    break;
   case '\'':
   case '\"':
   case '\\':
   case '?':
    break;
   default:
invalid_escape:
    if (c >= '!' && c <= '~') {
     tcc_warning ("unknown escape sequence: \'\\%c\'", c);
    } else {
     tcc_warning ("unknown escape sequence: \'\\x%x\'", c);
    }
    break;
   }
  }
  p++;
add_char_nonext:
  if (!is_long) {
   cstr_ccat (outstr, c);
  } else {
   cstr_wccat (outstr, c);
  }
 }

 if (!is_long) {
  cstr_ccat (outstr, '\0');
 } else {
  cstr_wccat (outstr, '\0');
 }
}
