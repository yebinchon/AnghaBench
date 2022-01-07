
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t ULONG ;
typedef int UCHAR ;
typedef size_t SIZE_T ;
typedef char* PCSTR ;
typedef char CHAR ;


 int TuiDrawText (size_t,size_t,char*,int ) ;
 size_t strlen (char*) ;

VOID TuiDrawCenteredText(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom, PCSTR TextString, UCHAR Attr)
{
    SIZE_T TextLength;
    ULONG BoxWidth;
    ULONG BoxHeight;
    ULONG LineBreakCount;
    SIZE_T Index;
    SIZE_T LastIndex;
    ULONG RealLeft;
    ULONG RealTop;
    ULONG X;
    ULONG Y;
    CHAR Temp[2];

    TextLength = strlen(TextString);


    LineBreakCount = 0;
    BoxWidth = 0;
    LastIndex = 0;
    for (Index=0; Index<TextLength; Index++)
    {
        if (TextString[Index] == '\n')
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

    BoxHeight = LineBreakCount + 1;

    RealLeft = (((Right - Left) - BoxWidth) / 2) + Left;
    RealTop = (((Bottom - Top) - BoxHeight) / 2) + Top;

    LastIndex = 0;
    for (Index=0; Index<TextLength; Index++)
    {
        if (TextString[Index] == '\n')
        {
            RealTop++;
            LastIndex = 0;
        }
        else
        {
            X = (ULONG)(RealLeft + LastIndex);
            Y = RealTop;
            LastIndex++;
            Temp[0] = TextString[Index];
            Temp[1] = 0;
            TuiDrawText(X, Y, Temp, Attr);
        }
    }
}
