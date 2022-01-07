
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RMagic ;


 int FILE_COMPILE ;
 int file_error (int *,int ,char*,char const*) ;
 int file_magwarn (int *,char*,...) ;
 int hextoint (int ) ;
 int isprint (int ) ;
 scalar_t__ isspace (int ) ;

__attribute__((used)) static const char * getstr(RMagic *ms, const char *s, char *p, int plen, int *slen, int action) {
 const char *origs = s;
 char *origp = p;
 char *pmax = p + plen - 1;
 int c, val;

 while ((c = *s++) != '\0') {
  if (isspace ((ut8)c)) {
   break;
  }
  if (p >= pmax) {
   file_error(ms, 0, "string too long: `%s'", origs);
   return ((void*)0);
  }
  if (c == '\\') {
   switch ((c = *s++)) {
   case '\0':
    if (action == FILE_COMPILE) {
     file_magwarn (ms, "incomplete escape");
    }
    goto out;
   case '\t':
    if (action == FILE_COMPILE) {
     file_magwarn(ms,
         "escaped tab found, use \\t instead");
     action++;
    }

   default:
    if (action == FILE_COMPILE) {
     if (isprint ((ut8)c)) {
      file_magwarn (ms,
       "no need to escape `%c'", c);
     } else {
      file_magwarn (ms,
       "unknown escape sequence: \\%03o", c);
     }
    }


   case ' ':
   case '>':
   case '<':
   case '&':
   case '^':
   case '=':
   case '!':

   case '\\':
    *p++ = (char) c;
    break;
   case 'a': *p++ = '\a'; break;
   case 'b': *p++ = '\b'; break;
   case 'f': *p++ = '\f'; break;
   case 'n': *p++ = '\n'; break;
   case 'r': *p++ = '\r'; break;
   case 't': *p++ = '\t'; break;
   case 'v': *p++ = '\v'; break;

   case '0':
   case '1':
   case '2':
   case '3':
   case '4':
   case '5':
   case '6':
   case '7':
    val = c - '0';
    c = *s++;
    if (c >= '0' && c <= '7') {
     val = (val << 3) | (c - '0');
     c = *s++;
     if (c >= '0' && c <= '7') {
      val = (val << 3) | (c-'0');
     } else {
      --s;
     }
    } else {
     --s;
    }
    *p++ = (char)val;
    break;


   case 'x':
    val = 'x';
    c = hextoint(*s++);
    if (c >= 0) {
     val = c;
     c = hextoint(*s++);
     if (c >= 0) {
      val = (val << 4) + c;
     } else {
      --s;
     }
    } else {
     --s;
    }
    *p++ = (char)val;
    break;
   }
  } else {
   *p++ = (char)c;
  }
 }
out:
 *p = '\0';
 *slen = p - origp;
 return s;
}
