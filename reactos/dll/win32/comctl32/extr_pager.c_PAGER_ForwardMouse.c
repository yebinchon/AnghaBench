
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bForward; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef int BOOL ;


 int TRACE (char*,int ) ;

__attribute__((used)) static inline LRESULT
PAGER_ForwardMouse (PAGER_INFO* infoPtr, BOOL bFwd)
{
    TRACE("[%p]\n", infoPtr->hwndSelf);

    infoPtr->bForward = bFwd;

    return 0;
}
