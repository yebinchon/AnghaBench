
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int PCHAR ;


 int TuiDrawProgressBar (int,int,int,int,int,int,int ) ;
 int UiScreenHeight ;
 int UiScreenWidth ;

VOID TuiDrawProgressBarCenter(ULONG Position, ULONG Range, PCHAR ProgressText)
{
    ULONG Left, Top, Right, Bottom;
    ULONG Width = 50;
    ULONG Height = 2;

    Left = (UiScreenWidth - Width - 4) / 2;
    Right = Left + Width + 3;
    Top = (UiScreenHeight - Height - 2) / 2;
    Top += 2;
    Bottom = Top + Height + 1;

    TuiDrawProgressBar(Left, Top, Right, Bottom, Position, Range, ProgressText);
}
