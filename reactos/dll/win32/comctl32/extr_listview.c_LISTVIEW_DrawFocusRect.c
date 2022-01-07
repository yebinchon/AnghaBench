
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_4__ {TYPE_3__ rcFocus; } ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef int HDC ;
typedef int DWORD ;
typedef int BOOL ;


 int DrawFocusRect (int ,TYPE_3__*) ;
 int FALSE ;
 int RGB (int,int,int) ;
 int SetBkColor (int ,int ) ;

__attribute__((used)) static inline BOOL LISTVIEW_DrawFocusRect(const LISTVIEW_INFO *infoPtr, HDC hdc)
{
    return (infoPtr->rcFocus.left < infoPtr->rcFocus.right) ?
            DrawFocusRect(hdc, &infoPtr->rcFocus) : FALSE;

}
