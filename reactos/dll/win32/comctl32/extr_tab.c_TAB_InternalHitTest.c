
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {scalar_t__ uNumItem; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int RECT ;
typedef int POINT ;
typedef scalar_t__ INT ;


 scalar_t__ PtInRect (int *,int ) ;
 int TAB_InternalGetItemRect (TYPE_1__ const*,scalar_t__,int *,int *) ;
 int TCHT_NOWHERE ;
 int TCHT_ONITEM ;

__attribute__((used)) static INT TAB_InternalHitTest (const TAB_INFO *infoPtr, POINT pt, UINT *flags)
{
  RECT rect;
  INT iCount;

  for (iCount = 0; iCount < infoPtr->uNumItem; iCount++)
  {
    TAB_InternalGetItemRect(infoPtr, iCount, &rect, ((void*)0));

    if (PtInRect(&rect, pt))
    {
      *flags = TCHT_ONITEM;
      return iCount;
    }
  }

  *flags = TCHT_NOWHERE;
  return -1;
}
