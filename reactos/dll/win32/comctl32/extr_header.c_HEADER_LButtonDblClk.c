
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int dwStyle; } ;
struct TYPE_7__ {void* y; void* x; } ;
typedef TYPE_1__ POINT ;
typedef int LRESULT ;
typedef void* INT ;
typedef TYPE_2__ HEADER_INFO ;


 int HDN_DIVIDERDBLCLICKW ;
 int HDN_ITEMDBLCLICKW ;
 int HDS_BUTTONS ;
 int HEADER_InternalHitTest (TYPE_2__ const*,TYPE_1__*,scalar_t__*,void**) ;
 int HEADER_SendNotifyWithHDItemT (TYPE_2__ const*,int ,void*,int *) ;
 scalar_t__ HHT_ONDIVIDER ;
 scalar_t__ HHT_ONDIVOPEN ;
 scalar_t__ HHT_ONHEADER ;

__attribute__((used)) static LRESULT
HEADER_LButtonDblClk (const HEADER_INFO *infoPtr, INT x, INT y)
{
    POINT pt;
    UINT flags;
    INT nItem;

    pt.x = x;
    pt.y = y;
    HEADER_InternalHitTest (infoPtr, &pt, &flags, &nItem);

    if ((infoPtr->dwStyle & HDS_BUTTONS) && (flags == HHT_ONHEADER))
        HEADER_SendNotifyWithHDItemT(infoPtr, HDN_ITEMDBLCLICKW, nItem, ((void*)0));
    else if ((flags == HHT_ONDIVIDER) || (flags == HHT_ONDIVOPEN))
        HEADER_SendNotifyWithHDItemT(infoPtr, HDN_DIVIDERDBLCLICKW, nItem, ((void*)0));

    return 0;
}
