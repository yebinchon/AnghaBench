
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int NT5_DrawBaseBackground (int ) ;

__attribute__((used)) static HDC
DrawBaseBackground(HDC hdcDesktop)
{
    HDC hdcMem;

    hdcMem = NT5_DrawBaseBackground(hdcDesktop);

    return hdcMem;
}
