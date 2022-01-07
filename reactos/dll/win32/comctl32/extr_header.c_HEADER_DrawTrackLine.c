
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hwndSelf; } ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef int INT ;
typedef TYPE_2__ HEADER_INFO ;
typedef int HDC ;


 int DSTINVERT ;
 int GetClientRect (int ,TYPE_1__*) ;
 int PatBlt (int ,int ,scalar_t__,int,scalar_t__,int ) ;

__attribute__((used)) static void
HEADER_DrawTrackLine (const HEADER_INFO *infoPtr, HDC hdc, INT x)
{
    RECT rect;

    GetClientRect (infoPtr->hwndSelf, &rect);
    PatBlt( hdc, x, rect.top, 1, rect.bottom - rect.top, DSTINVERT );
}
