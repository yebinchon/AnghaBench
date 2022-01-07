
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct dstr {int dummy; } ;


 int bfree (scalar_t__*) ;
 int dstr_from_wcs (struct dstr*,scalar_t__*) ;
 scalar_t__ dstr_is_empty (struct dstr*) ;
 scalar_t__* dstr_to_wcs (struct dstr*) ;
 scalar_t__ towlower (scalar_t__) ;

void dstr_to_lower(struct dstr *str)
{
 wchar_t *wstr;
 wchar_t *temp;

 if (dstr_is_empty(str))
  return;

 wstr = dstr_to_wcs(str);
 temp = wstr;

 if (!wstr)
  return;

 while (*temp) {
  *temp = (wchar_t)towlower(*temp);
  temp++;
 }

 dstr_from_wcs(str, wstr);
 bfree(wstr);
}
