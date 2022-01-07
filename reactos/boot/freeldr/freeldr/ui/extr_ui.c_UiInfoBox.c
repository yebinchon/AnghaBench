
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t ULONG ;
typedef size_t SIZE_T ;
typedef char* PCSTR ;


 int ATTR (int ,int ) ;
 int HORZ ;
 int TRUE ;
 int UiDrawBox (size_t,size_t,size_t,size_t,int ,int ,int ,int ,int ) ;
 int UiDrawCenteredText (size_t,size_t,size_t,size_t,char*,int ) ;
 int UiMenuBgColor ;
 int UiMenuFgColor ;
 int UiScreenHeight ;
 int UiScreenWidth ;
 int UiTextColor ;
 int VERT ;
 size_t strlen (char*) ;

VOID UiInfoBox(PCSTR MessageText)
{
    SIZE_T TextLength;
    ULONG BoxWidth;
    ULONG BoxHeight;
    ULONG LineBreakCount;
    SIZE_T Index;
    SIZE_T LastIndex;
    ULONG Left;
    ULONG Top;
    ULONG Right;
    ULONG Bottom;

    TextLength = strlen(MessageText);


    LineBreakCount = 0;
    BoxWidth = 0;
    LastIndex = 0;
    for (Index=0; Index<TextLength; Index++)
    {
        if (MessageText[Index] == '\n')
        {
            LastIndex = Index;
            LineBreakCount++;
        }
        else
        {
            if ((Index - LastIndex) > BoxWidth)
            {
                BoxWidth = (ULONG)(Index - LastIndex);
            }
        }
    }


    BoxWidth += 6;
    BoxHeight = LineBreakCount + 4;


    Left = (UiScreenWidth / 2) - (BoxWidth / 2);
    Top =(UiScreenHeight / 2) - (BoxHeight / 2);
    Right = (UiScreenWidth / 2) + (BoxWidth / 2);
    Bottom = (UiScreenHeight / 2) + (BoxHeight / 2);


    UiDrawBox(Left,
              Top,
              Right,
              Bottom,
              VERT,
              HORZ,
              TRUE,
              TRUE,
              ATTR(UiMenuFgColor, UiMenuBgColor)
              );


    UiDrawCenteredText(Left, Top, Right, Bottom, MessageText, ATTR(UiTextColor, UiMenuBgColor));
}
