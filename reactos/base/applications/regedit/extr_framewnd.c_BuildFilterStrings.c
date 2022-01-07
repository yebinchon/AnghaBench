
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int FilterID; int DisplayID; } ;
typedef TYPE_1__* PFILTERPAIR ;


 scalar_t__ LoadStringW (int ,int ,int*,int) ;
 int hInst ;

void
BuildFilterStrings(WCHAR *Filter, PFILTERPAIR Pairs, int PairCount)
{
    int i, c;

    c = 0;
    for(i = 0; i < PairCount; i++)
    {
        c += LoadStringW(hInst, Pairs[i].DisplayID, &Filter[c], 255);
        Filter[++c] = L'\0';
        c += LoadStringW(hInst, Pairs[i].FilterID, &Filter[c], 255);
        Filter[++c] = L'\0';
    }
    Filter[++c] = L'\0';
}
