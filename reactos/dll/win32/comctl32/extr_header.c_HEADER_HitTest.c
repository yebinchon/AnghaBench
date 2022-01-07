
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int flags; int iItem; int pt; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPHDHITTESTINFO ;
typedef int HEADER_INFO ;


 int HEADER_InternalHitTest (int const*,int *,int*,int*) ;
 int HHT_ABOVE ;
 int HHT_BELOW ;
 int HHT_NOWHERE ;
 int HHT_TOLEFT ;
 int HHT_TORIGHT ;

__attribute__((used)) static LRESULT
HEADER_HitTest (const HEADER_INFO *infoPtr, LPHDHITTESTINFO phti)
{
    UINT outside = HHT_NOWHERE | HHT_ABOVE | HHT_BELOW | HHT_TOLEFT | HHT_TORIGHT;

    HEADER_InternalHitTest (infoPtr, &phti->pt, &phti->flags, &phti->iItem);

    if (phti->flags & outside)
 return phti->iItem = -1;
    else
        return phti->iItem;
}
