
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int temp ;
struct dstr {int dummy; } ;
typedef int HWND ;


 scalar_t__ GetClassNameW (int ,scalar_t__*,int) ;
 int dstr_from_wcs (struct dstr*,scalar_t__*) ;

void get_window_class(struct dstr *class, HWND hwnd)
{
 wchar_t temp[256];

 temp[0] = 0;
 if (GetClassNameW(hwnd, temp, sizeof(temp) / sizeof(wchar_t)))
  dstr_from_wcs(class, temp);
}
