
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
 int to_surrogate_pair (int,int *,int *) ;
 int utf8_read_char (char const*,int*) ;
 int utf8_validate (char const*) ;
 size_t utf8_validate_cz (char const*) ;
 int write_hex16 (char*,int ) ;

void emit_string(SB *out, const char *str)
{
 const char *s = str;
 char *b;

 assert(utf8_validate(str));





 sb_need(out, 14);
 b = out->cur;

 *b++ = '"';
 while (*s != 0) {
  char c = *s++;


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
    size_t len;

    s--;
    len = utf8_validate_cz(s);

    if (len == 0) {
     assert(0);
     *b++ = (char)0xEF;
     *b++ = (char)0xBF;
     *b++ = (char)0xBD;
     s++;
    } else if (c < 0x1F) {

     uint32_t unicode;

     s += utf8_read_char(s, &unicode);

     if (unicode <= 0xFFFF) {
      *b++ = '\\';
      *b++ = 'u';
      b += write_hex16(b, (uint16_t)unicode);
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
