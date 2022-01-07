
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t uNumItem; size_t* order; } ;
typedef size_t INT ;
typedef TYPE_1__ HEADER_INFO ;



__attribute__((used)) static INT
HEADER_OrderToIndex(const HEADER_INFO *infoPtr, INT iorder)
{
    if ((iorder <0) || iorder >= infoPtr->uNumItem)
      return iorder;
    return infoPtr->order[iorder];
}
