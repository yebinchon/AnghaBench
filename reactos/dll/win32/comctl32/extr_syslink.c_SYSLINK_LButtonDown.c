
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int MouseDownID; int Self; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef int POINT ;
typedef int * PDOC_ITEM ;
typedef int LRESULT ;


 int * SYSLINK_LinkAtPt (TYPE_1__*,int const*,int*,int ) ;
 int SYSLINK_RepaintLink (TYPE_1__*,int *) ;
 int * SYSLINK_SetFocusLink (TYPE_1__*,int *) ;
 int SetFocus (int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT SYSLINK_LButtonDown (SYSLINK_INFO *infoPtr, const POINT *pt)
{
    PDOC_ITEM Current, Old;
    int id;

    Current = SYSLINK_LinkAtPt(infoPtr, pt, &id, TRUE);
    if(Current != ((void*)0))
    {
      SetFocus(infoPtr->Self);

      Old = SYSLINK_SetFocusLink(infoPtr, Current);
      if(Old != ((void*)0) && Old != Current)
      {
          SYSLINK_RepaintLink(infoPtr, Old);
      }
      infoPtr->MouseDownID = id;
      SYSLINK_RepaintLink(infoPtr, Current);
    }

    return 0;
}
