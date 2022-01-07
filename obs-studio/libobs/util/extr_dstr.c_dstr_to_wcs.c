
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct dstr {int len; int array; } ;


 int os_utf8_to_wcs_ptr (int ,int ,int **) ;

wchar_t *dstr_to_wcs(const struct dstr *str)
{
 wchar_t *dst;
 os_utf8_to_wcs_ptr(str->array, str->len, &dst);
 return dst;
}
