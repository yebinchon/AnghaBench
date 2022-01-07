
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CString ;


 int cstr_ccat (int *,int) ;

__attribute__((used)) static void add_char(CString *cstr, int c)
{
 if (c == '\'' || c == '\"' || c == '\\') {

  cstr_ccat (cstr, '\\');
 }
 if (c >= 32 && c <= 126) {
  cstr_ccat (cstr, c);
 } else {
  cstr_ccat (cstr, '\\');
  if (c == '\n') {
   cstr_ccat (cstr, 'n');
  } else {
   cstr_ccat (cstr, '0' + ((c >> 6) & 7));
   cstr_ccat (cstr, '0' + ((c >> 3) & 7));
   cstr_ccat (cstr, '0' + (c & 7));
  }
 }
}
