
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int state; } ;
struct TYPE_11__ {TYPE_1__ Link; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
struct TYPE_12__ {int MouseDownID; } ;
typedef TYPE_3__ SYSLINK_INFO ;
typedef int POINT ;
typedef TYPE_4__* PDOC_ITEM ;
typedef int LRESULT ;


 int LIS_FOCUSED ;
 int NM_CLICK ;
 TYPE_4__* SYSLINK_LinkAtPt (TYPE_3__*,int const*,int*,int ) ;
 int SYSLINK_SendParentNotify (TYPE_3__*,int ,TYPE_4__*,int) ;
 int TRUE ;

__attribute__((used)) static LRESULT SYSLINK_LButtonUp (SYSLINK_INFO *infoPtr, const POINT *pt)
{
    if(infoPtr->MouseDownID > -1)
    {
        PDOC_ITEM Current;
        int id;

        Current = SYSLINK_LinkAtPt(infoPtr, pt, &id, TRUE);
        if((Current != ((void*)0)) && (Current->u.Link.state & LIS_FOCUSED) && (infoPtr->MouseDownID == id))
        {
            SYSLINK_SendParentNotify(infoPtr, NM_CLICK, Current, id);
        }
    }

    infoPtr->MouseDownID = -1;

    return 0;
}
