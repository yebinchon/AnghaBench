
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;
typedef int PCSTR ;


 int FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (int ,int ) ;
 int TAG_TUI_SCREENBUFFER ;
 int TuiMessageBoxCritical (int ) ;
 int TuiRestoreScreen (int ) ;
 int TuiSaveScreen (int ) ;
 int UiScreenHeight ;
 int UiScreenWidth ;

VOID TuiMessageBox(PCSTR MessageText)
{
    PVOID ScreenBuffer;


    ScreenBuffer = FrLdrTempAlloc(UiScreenWidth * UiScreenHeight * 2,
                                  TAG_TUI_SCREENBUFFER);
    TuiSaveScreen(ScreenBuffer);


    TuiMessageBoxCritical(MessageText);


    TuiRestoreScreen(ScreenBuffer);
    FrLdrTempFree(ScreenBuffer, TAG_TUI_SCREENBUFFER);
}
