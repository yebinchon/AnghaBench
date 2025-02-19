
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHPDBG_EOL_CR ;
 int PHPDBG_EOL_CRLF ;
 int PHPDBG_EOL_LF ;
 int PHPDBG_G (int ) ;
 int PHPDBG_IS_REMOTE ;
 int count_lf_and_cr (char*,int) ;
 int efree (char*) ;
 scalar_t__ emalloc (int) ;
 int eol ;
 char* erealloc (char*,int) ;
 int flags ;

void phpdbg_eol_convert(char **str, int *len)
{
 char *in = *str, *out;
 int in_len = *len, cursor, i;
 char last, cur;

 if ((PHPDBG_G(flags) & PHPDBG_IS_REMOTE) != PHPDBG_IS_REMOTE) {
  return;
 }

 if (PHPDBG_EOL_CRLF == PHPDBG_G(eol)) {
  out = (char *)emalloc(in_len + count_lf_and_cr(in, in_len));

  last = cur = in[0];
  i = cursor = 0;
  for (; i < in_len;) {
   if (0x0a == cur && last != 0x0d) {
    out[cursor] = 0x0d;
    cursor++;
    out[cursor] = cur;
   } else if(0x0d == cur) {
    if (i + 1 < in_len && 0x0a != in[i+1]) {
     out[cursor] = cur;
     cursor++;
     out[cursor] = 0x0a;
     last = 0x0a;
    } else {
     out[cursor] = 0x0d;
     last = 0x0d;
    }
   } else {
    out[cursor] = cur;
    last = cur;
   }

   i++;
   cursor++;
   cur = in[i];
  }

 } else if (PHPDBG_EOL_LF == PHPDBG_G(eol) || PHPDBG_EOL_CR == PHPDBG_G(eol)) {
  char want, kick;

  if (PHPDBG_EOL_LF == PHPDBG_G(eol)) {
   want = 0x0a;
   kick = 0x0d;
  } else {
   want = 0x0d;
   kick = 0x0a;
  }


  out = (char *)emalloc(in_len);

  last = cur = in[0];
  i = cursor = 0;
  for (; cursor < in_len;) {
   if (kick == cur) {
    out[cursor] = want;
   } else if (want == cur) {
    if (kick != last) {
     out[cursor] = want;
    }
   } else {
    out[cursor] = cur;
   }

   last = cur;
   cursor++;
   cur = in[cursor];
  }
 } else {
  return;
 }

 efree(*str);
 *str = erealloc(out, cursor);
 *len = cursor;
 in = ((void*)0);
}
