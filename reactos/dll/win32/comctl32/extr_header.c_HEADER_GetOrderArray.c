
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int uNumItem; int order; } ;
typedef int LRESULT ;
typedef int LPINT ;
typedef scalar_t__ INT ;
typedef TYPE_1__ HEADER_INFO ;


 int FALSE ;
 int TRUE ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static LRESULT
HEADER_GetOrderArray(const HEADER_INFO *infoPtr, INT size, LPINT order)
{
    if ((UINT)size <infoPtr->uNumItem)
      return FALSE;

    memcpy(order, infoPtr->order, infoPtr->uNumItem * sizeof(INT));
    return TRUE;
}
