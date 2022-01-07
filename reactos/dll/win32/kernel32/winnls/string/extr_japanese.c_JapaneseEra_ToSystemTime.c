
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int wDay; int wMonth; int wYear; } ;
struct TYPE_6__ {int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__* PCJAPANESE_ERA ;
typedef TYPE_2__* LPSYSTEMTIME ;
typedef int BOOL ;


 int ASSERT (int ) ;
 int TRUE ;
 int ZeroMemory (TYPE_2__*,int) ;

__attribute__((used)) static BOOL JapaneseEra_ToSystemTime(PCJAPANESE_ERA pEra, LPSYSTEMTIME pst)
{
    ASSERT(pEra != ((void*)0));
    ASSERT(pst != ((void*)0));

    ZeroMemory(pst, sizeof(*pst));
    pst->wYear = pEra->wYear;
    pst->wMonth = pEra->wMonth;
    pst->wDay = pEra->wDay;
    return TRUE;
}
