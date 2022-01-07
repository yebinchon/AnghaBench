
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {scalar_t__ nNotifyFormat; } ;
struct TYPE_5__ {int * pitem; scalar_t__ iButton; int iItem; } ;
typedef TYPE_1__ NMHEADERW ;
typedef int NMHDR ;
typedef int INT ;
typedef TYPE_2__ HEADER_INFO ;
typedef int HDITEMW ;
typedef int BOOL ;


 int HEADER_NotifyCodeWtoA (int ) ;
 int HEADER_SendNotify (TYPE_2__ const*,int ,int *) ;
 scalar_t__ NFR_UNICODE ;

__attribute__((used)) static BOOL
HEADER_SendNotifyWithHDItemT(const HEADER_INFO *infoPtr, UINT code, INT iItem, HDITEMW *lpItem)
{
    NMHEADERW nmhdr;

    if (infoPtr->nNotifyFormat != NFR_UNICODE)
        code = HEADER_NotifyCodeWtoA(code);
    nmhdr.iItem = iItem;
    nmhdr.iButton = 0;
    nmhdr.pitem = lpItem;

    return (BOOL)HEADER_SendNotify(infoPtr, code, (NMHDR *)&nmhdr);
}
