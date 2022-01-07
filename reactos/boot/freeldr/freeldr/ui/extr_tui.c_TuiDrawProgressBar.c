
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int PCHAR ;


 int ATTR (int ,int ) ;
 int HORZ ;
 int TRUE ;
 int TuiDrawBox (int,int,int,int,int ,int ,int ,int ,int ) ;
 int TuiDrawCenteredText (int,int,int,int,int ,int ) ;
 int TuiDrawText (int,int,char*,int ) ;
 int TuiUpdateDateTime () ;
 int UiMenuBgColor ;
 int UiMenuFgColor ;
 int UiTextColor ;
 int UiTruncateStringEllipsis (int ,int) ;
 int VERT ;
 int VideoCopyOffScreenBufferToVRAM () ;

VOID TuiDrawProgressBar(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom, ULONG Position, ULONG Range, PCHAR ProgressText)
{
    ULONG i;
    ULONG ProgressBarWidth = (Right - Left) - 3;


    UiTruncateStringEllipsis(ProgressText, ProgressBarWidth - 4);

    if (Position > Range)
    {
        Position = Range;
    }


    TuiDrawBox(Left, Top, Right, Bottom, VERT, HORZ, TRUE, TRUE, ATTR(UiMenuFgColor, UiMenuBgColor));




    TuiDrawCenteredText(Left + 2, Top + 2, Right - 2, Top + 2, ProgressText, ATTR(UiTextColor, UiMenuBgColor));


    for (i=0; i<(Position*ProgressBarWidth)/Range; i++)
    {
        TuiDrawText(Left+2+i, Top+2, "\xDB", ATTR(UiTextColor, UiMenuBgColor));
    }


    for (; i<ProgressBarWidth; i++)
    {
        TuiDrawText(Left+2+i, Top+2, "\xB2", ATTR(UiTextColor, UiMenuBgColor));
    }

    TuiUpdateDateTime();
    VideoCopyOffScreenBufferToVRAM();
}
