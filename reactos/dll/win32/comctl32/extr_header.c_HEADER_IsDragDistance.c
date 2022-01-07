
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {TYPE_1__ ptLButtonDown; } ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__ HEADER_INFO ;
typedef int BOOL ;


 scalar_t__ GetSystemMetrics (int ) ;
 int SM_CXDOUBLECLK ;
 int SM_CYDOUBLECLK ;
 scalar_t__ abs (scalar_t__) ;

__attribute__((used)) static BOOL
HEADER_IsDragDistance(const HEADER_INFO *infoPtr, const POINT *pt)
{



    return (abs(infoPtr->ptLButtonDown.x - pt->x)>GetSystemMetrics(SM_CXDOUBLECLK) ||
            abs(infoPtr->ptLButtonDown.y - pt->y)>GetSystemMetrics(SM_CYDOUBLECLK));
}
