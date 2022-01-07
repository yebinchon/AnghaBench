
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HDC ;
typedef int DWORD ;


 int GetDC (int *) ;
 int GetDeviceCaps (int ,int ) ;
 int LOGPIXELSY ;
 int MulDiv (int ,int,int ) ;
 int ReleaseDC (int *,int ) ;

__attribute__((used)) static DWORD PointSizeFromHeight(LONG lHeight)
{
    DWORD dwPointSize;
    HDC hDC;

    hDC = GetDC(((void*)0));
    dwPointSize = -MulDiv(lHeight, 720, GetDeviceCaps(hDC, LOGPIXELSY));
    ReleaseDC(((void*)0), hDC);


    dwPointSize += 5;
    dwPointSize -= dwPointSize % 10;

    return dwPointSize;
}
