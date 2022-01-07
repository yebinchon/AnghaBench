
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uFocus; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int LRESULT ;


 int TRACE (char*,TYPE_1__ const*) ;

__attribute__((used)) static inline LRESULT
TAB_GetCurFocus (const TAB_INFO *infoPtr)
{
    TRACE("(%p)\n", infoPtr);
    return infoPtr->uFocus;
}
