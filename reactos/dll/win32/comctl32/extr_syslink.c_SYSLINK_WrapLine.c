
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {scalar_t__ cy; scalar_t__ cx; } ;
typedef char* LPWSTR ;
typedef TYPE_1__* LPSIZE ;
typedef int BOOL ;


 int FALSE ;
 int SL_LEFTMARGIN ;
 int TRUE ;
 int max (int,int) ;

__attribute__((used)) static BOOL SYSLINK_WrapLine (LPWSTR Text, WCHAR BreakChar, int x, int *LineLen,
                             int nFit, LPSIZE Extent)
{
    int i;

    for (i = 0; i < nFit; i++) if (Text[i] == '\n') break;

    if (i == *LineLen) return FALSE;


    if (Text[i] != '\n' && Text[i] != BreakChar)
    {

        while (i && Text[i - 1] != BreakChar) i--;

        if (i == 0)
        {
            Extent->cx = 0;
            Extent->cy = 0;
            if (x == SL_LEFTMARGIN) i = max( nFit, 1 );
        }
    }
    *LineLen = i;
    return TRUE;
}
