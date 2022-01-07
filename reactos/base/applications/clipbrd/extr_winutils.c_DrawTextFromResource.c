
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPWSTR ;
typedef int LPRECT ;
typedef int HINSTANCE ;
typedef int HDC ;


 int DrawTextW (int ,int ,int,int ,int ) ;
 int LoadStringW (int ,int ,int ,int ) ;

void DrawTextFromResource(HINSTANCE hInstance, UINT uID, HDC hDC, LPRECT lpRect, UINT uFormat)
{
    LPWSTR lpBuffer;
    int nCount;

    nCount = LoadStringW(hInstance, uID, (LPWSTR)&lpBuffer, 0);
    if (nCount)
        DrawTextW(hDC, lpBuffer, nCount, lpRect, uFormat);
}
