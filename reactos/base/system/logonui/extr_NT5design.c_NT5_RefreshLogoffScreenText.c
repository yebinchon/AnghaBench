
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPWSTR ;
typedef int HDC ;


 int NT5_DrawLogoffCaptionText (int ,int ) ;

VOID
NT5_RefreshLogoffScreenText(LPWSTR lpText,
                            HDC hdcMem)
{



    NT5_DrawLogoffCaptionText(lpText, hdcMem);
}
