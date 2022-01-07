
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TLbtnState; int BRbtnState; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef int INT ;


 int KillTimer (int ,int ) ;
 int PGF_DEPRESSED ;
 int PGF_HOT ;
 void* PGF_NORMAL ;
 int TIMERID1 ;
 int TIMERID2 ;
 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT
PAGER_LButtonUp (PAGER_INFO* infoPtr, INT keys, INT x, INT y)
{
    TRACE("[%p]\n", infoPtr->hwndSelf);

    KillTimer (infoPtr->hwndSelf, TIMERID1);
    KillTimer (infoPtr->hwndSelf, TIMERID2);


    if (infoPtr->TLbtnState & (PGF_HOT | PGF_DEPRESSED))
        infoPtr->TLbtnState = PGF_NORMAL;
    if (infoPtr->BRbtnState & (PGF_HOT | PGF_DEPRESSED))
        infoPtr->BRbtnState = PGF_NORMAL;

    return 0;
}
