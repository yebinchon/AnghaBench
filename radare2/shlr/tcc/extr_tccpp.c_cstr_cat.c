
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CString ;


 int cstr_ccat (int *,int) ;

void cstr_cat(CString *cstr, const char *str)
{
 int c;
 for (;;) {
  c = *str;
  if (c == '\0') {
   break;
  }
  cstr_ccat (cstr, c);
  str++;
 }
}
