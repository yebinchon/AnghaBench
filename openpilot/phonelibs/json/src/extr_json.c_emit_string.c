
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {char* cur; } ;
typedef TYPE_1__ SB ;


 int assert (int) ;
 int sb_need (TYPE_1__*,int) ;
 int strcpy (char*,char*) ;
 int to_surrogate_pair (int,int*,int*) ;
 int utf8_read_char (char const*,int*) ;
 int utf8_validate (char const*) ;
 int utf8_validate_cz (char const*) ;
 int write_hex16 (char*,int) ;

void emit_string(SB *out, const char *str)
{
 bool escape_unicode = 0;
 const char *s = str;
 char *b;

 assert(utf8_validate(str));





 sb_need(out, 14);
 b = out->cur;

 *b++ = '"';
 while (*s != 0) {
  unsigned char c = *s++;


  switch (c) {
   case '"':
    *b++ = '\\';
    *b++ = '"';
    break;
   case '\\':
    *b++ = '\\';
    *b++ = '\\';
    break;
   case '\b':
    *b++ = '\\';
    *b++ = 'b';
    break;
   case '\f':
    *b++ = '\\';
    *b++ = 'f';
    break;
   case '\n':
    *b++ = '\\';
    *b++ = 'n';
    break;
   case '\r':
    *b++ = '\\';
    *b++ = 'r';
    break;
   case '\t':
    *b++ = '\\';
    *b++ = 't';
    break;
   default: {
    int len;

    s--;
    len = utf8_validate_cz(s);

    if (len == 0) {
     assert(0);
     if (escape_unicode) {
      strcpy(b, "\\uFFFD");
      b += 6;
     } else {
      *b++ = 0xEF;
      *b++ = 0xBF;
      *b++ = 0xBD;
     }
     s++;
    } else if (c < 0x1F || (c >= 0x80 && escape_unicode)) {

     uint32_t unicode;

     s += utf8_read_char(s, &unicode);

     if (unicode <= 0xFFFF) {
      *b++ = '\\';
      *b++ = 'u';
      b += write_hex16(b, unicode);
     } else {

      uint16_t uc, lc;
      assert(unicode <= 0x10FFFF);
      to_surrogate_pair(unicode, &uc, &lc);
      *b++ = '\\';
      *b++ = 'u';
      b += write_hex16(b, uc);
      *b++ = '\\';
      *b++ = 'u';
      b += write_hex16(b, lc);
     }
    } else {

     while (len--)
      *b++ = *s++;
    }

    break;
   }
  }





  out->cur = b;
  sb_need(out, 14);
  b = out->cur;
 }
 *b++ = '"';

 out->cur = b;
}
