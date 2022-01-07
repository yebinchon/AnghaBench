
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; } ;
typedef int RECT ;
typedef TYPE_1__ LISTVIEW_INFO ;


 int InvalidateRect (int ,int const*,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int is_redrawing (TYPE_1__ const*) ;
 int wine_dbgstr_rect (int const*) ;

__attribute__((used)) static inline void LISTVIEW_InvalidateRect(const LISTVIEW_INFO *infoPtr, const RECT* rect)
{
    if(!is_redrawing(infoPtr)) return;
    TRACE(" invalidating rect=%s\n", wine_dbgstr_rect(rect));
    InvalidateRect(infoPtr->hwndSelf, rect, TRUE);
}
