
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hwndSelf; } ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__ PAGER_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int HTCLIENT ;
 int HTTRANSPARENT ;
 scalar_t__ PAGER_HitTest (TYPE_2__ const*,TYPE_1__*) ;
 int ScreenToClient (int ,TYPE_1__*) ;

__attribute__((used)) static LRESULT
PAGER_NCHitTest (const PAGER_INFO* infoPtr, INT x, INT y)
{
    POINT pt;
    INT nHit;

    pt.x = x;
    pt.y = y;

    ScreenToClient (infoPtr->hwndSelf, &pt);
    nHit = PAGER_HitTest(infoPtr, &pt);

    return (nHit < 0) ? HTTRANSPARENT : HTCLIENT;
}
