
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;

__attribute__((used)) static inline void
TRACKBAR_InvalidateAll (const TRACKBAR_INFO *infoPtr)
{
    InvalidateRect(infoPtr->hwndSelf, ((void*)0), FALSE);
}
