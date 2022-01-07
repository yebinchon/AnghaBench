
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
typedef int RECT ;
typedef TYPE_1__ POINT ;
typedef int LISTVIEW_INFO ;
typedef int ITERATOR ;
typedef int BOOL ;


 int LISTVIEW_GetOrigin (int const*,TYPE_1__*) ;
 int OffsetRect (int *,int ,int ) ;
 int TRACE (char*,int ) ;
 int iterator_frameditems_absolute (int *,int const*,int *) ;
 int wine_dbgstr_rect (int const*) ;

__attribute__((used)) static BOOL iterator_frameditems(ITERATOR* i, const LISTVIEW_INFO* infoPtr, const RECT *lprc)
{
    RECT frame = *lprc;
    POINT Origin;

    TRACE("(lprc=%s)\n", wine_dbgstr_rect(lprc));

    LISTVIEW_GetOrigin(infoPtr, &Origin);
    OffsetRect(&frame, -Origin.x, -Origin.y);

    return iterator_frameditems_absolute(i, infoPtr, &frame);
}
