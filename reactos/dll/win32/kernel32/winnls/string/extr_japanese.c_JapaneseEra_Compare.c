
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wYear; scalar_t__ wMonth; scalar_t__ wDay; } ;
typedef TYPE_1__* PCJAPANESE_ERA ;
typedef int INT ;



__attribute__((used)) static INT JapaneseEra_Compare(const void *e1, const void *e2)
{
    PCJAPANESE_ERA pEra1 = (PCJAPANESE_ERA)e1;
    PCJAPANESE_ERA pEra2 = (PCJAPANESE_ERA)e2;
    if (pEra1->wYear < pEra2->wYear)
        return -1;
    if (pEra1->wYear > pEra2->wYear)
        return 1;
    if (pEra1->wMonth < pEra2->wMonth)
        return -1;
    if (pEra1->wMonth > pEra2->wMonth)
        return 1;
    if (pEra1->wDay < pEra2->wDay)
        return -1;
    if (pEra1->wDay > pEra2->wDay)
        return 1;
    return 0;
}
