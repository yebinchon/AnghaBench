
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;


 scalar_t__ CurChar ;
 scalar_t__* ParseLine ;
 scalar_t__* ParsePos ;
 int ReadLine (scalar_t__*,scalar_t__) ;
 scalar_t__ TRUE ;
 scalar_t__ _T (char) ;
 scalar_t__ bLineContinuations ;
 scalar_t__ bParseError ;

__attribute__((used)) static TCHAR ParseChar(void)
{
    TCHAR Char;

    if (bParseError)
        return (CurChar = 0);

restart:





    do
    {
        Char = *ParsePos++;
    }
    while (Char == _T('\r'));

    if (!Char)
    {
        ParsePos--;
        if (bLineContinuations)
        {
            if (!ReadLine(ParseLine, TRUE))
            {

                bParseError = TRUE;
            }
            else if (*(ParsePos = ParseLine))
            {
                goto restart;
            }
        }
    }
    return (CurChar = Char);
}
