
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int pt; } ;
typedef int TAB_INFO ;
typedef int LRESULT ;
typedef TYPE_1__* LPTCHITTESTINFO ;


 int TAB_InternalHitTest (int const*,int ,int *) ;
 int TRACE (char*,int const*,TYPE_1__*) ;

__attribute__((used)) static inline LRESULT
TAB_HitTest (const TAB_INFO *infoPtr, LPTCHITTESTINFO lptest)
{
  TRACE("(%p, %p)\n", infoPtr, lptest);
  return TAB_InternalHitTest (infoPtr, lptest->pt, &lptest->flags);
}
