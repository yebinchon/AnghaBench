
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int szUrl; int szID; } ;
struct TYPE_11__ {TYPE_1__ Link; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
struct TYPE_13__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_12__ {int iLink; scalar_t__* szUrl; scalar_t__* szID; scalar_t__ stateMask; scalar_t__ state; scalar_t__ mask; } ;
struct TYPE_15__ {TYPE_4__ hdr; TYPE_3__ item; } ;
struct TYPE_14__ {int Notify; int Self; } ;
typedef TYPE_5__ SYSLINK_INFO ;
typedef TYPE_6__ NMLINK ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_7__ DOC_ITEM ;


 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFY ;
 int lstrcpyW (scalar_t__*,int ) ;

__attribute__((used)) static LRESULT SYSLINK_SendParentNotify (const SYSLINK_INFO *infoPtr, UINT code, const DOC_ITEM *Link, int iLink)
{
    NMLINK nml;

    nml.hdr.hwndFrom = infoPtr->Self;
    nml.hdr.idFrom = GetWindowLongPtrW(infoPtr->Self, GWLP_ID);
    nml.hdr.code = code;

    nml.item.mask = 0;
    nml.item.iLink = iLink;
    nml.item.state = 0;
    nml.item.stateMask = 0;
    if(Link->u.Link.szID)
    {
        lstrcpyW(nml.item.szID, Link->u.Link.szID);
    }
    else
    {
        nml.item.szID[0] = 0;
    }
    if(Link->u.Link.szUrl)
    {
        lstrcpyW(nml.item.szUrl, Link->u.Link.szUrl);
    }
    else
    {
        nml.item.szUrl[0] = 0;
    }

    return SendMessageW(infoPtr->Notify, WM_NOTIFY, nml.hdr.idFrom, (LPARAM)&nml);
}
