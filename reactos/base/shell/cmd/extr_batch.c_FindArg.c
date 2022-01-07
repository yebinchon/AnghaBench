
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* shiftlevel; scalar_t__* params; } ;
typedef int TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int INT ;
typedef int BOOL ;


 int TRACE (char*,int) ;
 int _T (int ) ;
 scalar_t__ _tcslen (scalar_t__*) ;
 TYPE_1__* bc ;

LPTSTR FindArg(TCHAR Char, BOOL *IsParam0)
{
    LPTSTR pp;
    INT n = Char - _T('0');

    TRACE ("FindArg: (%d)\n", n);

    if (n < 0 || n > 9)
        return ((void*)0);

    n = bc->shiftlevel[n];
    *IsParam0 = (n == 0);
    pp = bc->params;



    while (*pp && n--)
        pp += _tcslen (pp) + 1;

    return pp;
}
