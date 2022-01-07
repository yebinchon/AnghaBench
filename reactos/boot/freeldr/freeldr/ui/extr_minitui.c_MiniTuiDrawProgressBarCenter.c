
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int PCHAR ;


 int MiniTuiDrawProgressBar (int,int,int,int,int,int,int ) ;
 int UiScreenHeight ;
 int UiScreenWidth ;

VOID MiniTuiDrawProgressBarCenter(ULONG Position, ULONG Range, PCHAR ProgressText)
{
    ULONG Left, Top, Right, Bottom, Width, Height;


    Height = 2;
    Width = UiScreenWidth;
    Left = 0;
    Right = (Left + Width) - 1;
    Top = UiScreenHeight - Height - 4;
    Bottom = Top + Height + 1;


    MiniTuiDrawProgressBar(Left, Top, Right, Bottom, Position, Range, ProgressText);
}
