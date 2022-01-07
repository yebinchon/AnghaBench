
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPWSTR ;
typedef int HDC ;


 int NT5_DrawLogoffCaptionText (int ,int ) ;
 int NT5_DrawLogoffIcon (int ) ;

VOID
NT5_CreateLogoffScreen(LPWSTR lpText,
                       HDC hdcMem)
{

    NT5_DrawLogoffIcon(hdcMem);


    NT5_DrawLogoffCaptionText(lpText, hdcMem);
}
