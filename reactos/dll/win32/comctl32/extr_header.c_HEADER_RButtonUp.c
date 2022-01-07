
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_7__ {scalar_t__ hwndSelf; } ;
struct TYPE_6__ {void* y; void* x; } ;
typedef TYPE_1__ POINT ;
typedef int LRESULT ;
typedef void* INT ;
typedef TYPE_2__ HEADER_INFO ;
typedef int BOOL ;


 int ClientToScreen (scalar_t__,TYPE_1__*) ;
 int HEADER_SendSimpleNotify (TYPE_2__*,int ) ;
 int MAKELPARAM (void*,void*) ;
 int NM_RCLICK ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int WM_CONTEXTMENU ;

__attribute__((used)) static LRESULT
HEADER_RButtonUp (HEADER_INFO *infoPtr, INT x, INT y)
{
    BOOL bRet;
    POINT pt;

    pt.x = x;
    pt.y = y;


    bRet = HEADER_SendSimpleNotify (infoPtr, NM_RCLICK);


    ClientToScreen(infoPtr->hwndSelf, &pt);


    SendMessageW( infoPtr->hwndSelf, WM_CONTEXTMENU, (WPARAM) infoPtr->hwndSelf, MAKELPARAM(pt.x, pt.y));

    return bRet;
}
