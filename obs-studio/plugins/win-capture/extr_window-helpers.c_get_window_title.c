
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct dstr {int dummy; } ;
typedef int HWND ;


 int GetWindowTextLengthW (int ) ;
 scalar_t__ GetWindowTextW (int ,int *,int) ;
 int dstr_from_wcs (struct dstr*,int *) ;
 int free (int *) ;
 int * malloc (int) ;

void get_window_title(struct dstr *name, HWND hwnd)
{
 wchar_t *temp;
 int len;

 len = GetWindowTextLengthW(hwnd);
 if (!len)
  return;

 temp = malloc(sizeof(wchar_t) * (len + 1));
 if (GetWindowTextW(hwnd, temp, len + 1))
  dstr_from_wcs(name, temp);
 free(temp);
}
