
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct dstr {int * array; } ;


 int dstr_free (struct dstr*) ;
 int dstr_resize (struct dstr*,size_t) ;
 size_t wchar_to_utf8 (int const*,int ,int *,size_t,int ) ;

void dstr_from_wcs(struct dstr *dst, const wchar_t *wstr)
{
 size_t len = wchar_to_utf8(wstr, 0, ((void*)0), 0, 0);

 if (len) {
  dstr_resize(dst, len);
  wchar_to_utf8(wstr, 0, dst->array, len + 1, 0);
 } else {
  dstr_free(dst);
 }
}
