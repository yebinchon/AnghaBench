
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_2__ {int val; scalar_t__* name; } ;
typedef int LPTSTR ;
typedef size_t INT ;


 int _tcslen (scalar_t__*) ;
 scalar_t__ _tcsnicmp (int ,scalar_t__*,int ) ;
 TYPE_1__* clrtable ;

__attribute__((used)) static
WORD txt_clr(LPTSTR str)
{
    INT i;

    for(i = 0; *(clrtable[i].name); i++)
        if (_tcsnicmp(str, clrtable[i].name, _tcslen(clrtable[i].name)) == 0)
            return clrtable[i].val;

    return (WORD)-1;
}
