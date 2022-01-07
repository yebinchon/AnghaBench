
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {size_t cxy; size_t iOrder; size_t mask; int iImage; int lParam; int fmt; scalar_t__ cchTextMax; int * pszText; int hbm; } ;
struct TYPE_8__ {TYPE_1__* items; } ;
struct TYPE_7__ {size_t cxy; size_t iOrder; int iImage; int lParam; int fmt; int hbm; } ;
typedef size_t INT ;
typedef TYPE_2__ HEADER_INFO ;
typedef TYPE_3__ HDITEMW ;
typedef int BOOL ;


 int ERR (char*,size_t) ;


 int HEADER_SendNotifyWithHDItemT (TYPE_2__ const*,int ,size_t,TYPE_3__*) ;

__attribute__((used)) static BOOL
HEADER_SendNotifyWithIntFieldT(const HEADER_INFO *infoPtr, UINT code, INT iItem, INT mask, INT iValue)
{
    HDITEMW nmitem;


    nmitem.cxy = infoPtr->items[iItem].cxy;
    nmitem.hbm = infoPtr->items[iItem].hbm;
    nmitem.pszText = ((void*)0);
    nmitem.cchTextMax = 0;
    nmitem.fmt = infoPtr->items[iItem].fmt;
    nmitem.lParam = infoPtr->items[iItem].lParam;
    nmitem.iOrder = infoPtr->items[iItem].iOrder;
    nmitem.iImage = infoPtr->items[iItem].iImage;

    nmitem.mask = mask;
    switch (mask)
    {
 case 128:
     nmitem.cxy = iValue;
     break;
 case 129:
     nmitem.iOrder = iValue;
     break;
 default:
     ERR("invalid mask value 0x%x\n", iValue);
    }

    return HEADER_SendNotifyWithHDItemT(infoPtr, code, iItem, &nmitem);
}
