
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int PCHAR ;


 int ATTR (int,int ) ;
 int TuiDrawCenteredText (int,int,int,int,int ,int ) ;
 int TuiDrawText (int,int,char*,int ) ;
 int TuiUpdateDateTime () ;
 int UiMenuBgColor ;
 int UiTextColor ;
 int UiTruncateStringEllipsis (int ,int) ;
 int VideoCopyOffScreenBufferToVRAM () ;

VOID MiniTuiDrawProgressBar(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom, ULONG Position, ULONG Range, PCHAR ProgressText)
{
    ULONG i;
    ULONG ProgressBarWidth = (Right - Left) - 3;


    UiTruncateStringEllipsis(ProgressText, ProgressBarWidth - 4);

    if (Position > Range)
    {
        Position = Range;
    }




    TuiDrawCenteredText(Left + 2, Top + 1, Right - 2, Top + 1, ProgressText, ATTR(7, 0));


    for (i=0; i<(Position*ProgressBarWidth)/Range; i++)
    {
        TuiDrawText(Left+2+i, Top+2, "\xDB", ATTR(UiTextColor, UiMenuBgColor));
    }

    TuiUpdateDateTime();
    VideoCopyOffScreenBufferToVRAM();
}
