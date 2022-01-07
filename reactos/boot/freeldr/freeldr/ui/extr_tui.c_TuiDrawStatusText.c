
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef scalar_t__ SIZE_T ;
typedef char* PCSTR ;


 int ATTR (int ,int ) ;
 int TuiDrawText (int,scalar_t__,char*,int ) ;
 scalar_t__ UiScreenHeight ;
 scalar_t__ UiScreenWidth ;
 int UiStatusBarBgColor ;
 int UiStatusBarFgColor ;
 int VideoCopyOffScreenBufferToVRAM () ;
 scalar_t__ strlen (char*) ;

VOID TuiDrawStatusText(PCSTR StatusText)
{
    SIZE_T i;

    TuiDrawText(0, UiScreenHeight-1, " ", ATTR(UiStatusBarFgColor, UiStatusBarBgColor));
    TuiDrawText(1, UiScreenHeight-1, StatusText, ATTR(UiStatusBarFgColor, UiStatusBarBgColor));

    for (i=strlen(StatusText)+1; i<UiScreenWidth; i++)
    {
        TuiDrawText((ULONG)i, UiScreenHeight-1, " ", ATTR(UiStatusBarFgColor, UiStatusBarBgColor));
    }

    VideoCopyOffScreenBufferToVRAM();
}
