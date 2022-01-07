
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int BUFFILE ;
 int GetDlgItemTextW (int ,int ,int *,int ) ;
 int edt1 ;
 int lstrcpyW (int *,int *) ;
 int * wcsrchr (int *,char) ;

__attribute__((used)) static void FD31_StripEditControl(HWND hwnd)
{
    WCHAR temp[BUFFILE], *cp;

    GetDlgItemTextW( hwnd, edt1, temp, ARRAY_SIZE(temp));
    cp = wcsrchr(temp, '\\');
    if (cp != ((void*)0)) {
 lstrcpyW(temp, cp+1);
    }
    cp = wcsrchr(temp, ':');
    if (cp != ((void*)0)) {
 lstrcpyW(temp, cp+1);
    }

}
