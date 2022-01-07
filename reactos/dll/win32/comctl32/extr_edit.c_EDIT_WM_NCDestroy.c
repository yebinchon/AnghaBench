
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hloc32W; scalar_t__ hlocapp; struct TYPE_6__* undo_text; int hwndSelf; struct TYPE_6__* next; struct TYPE_6__* first_line_def; } ;
typedef int LRESULT ;
typedef TYPE_1__ LINEDEF ;
typedef int HTHEME ;
typedef TYPE_1__ EDITSTATE ;


 int CloseThemeData (int ) ;
 int EDIT_InvalidateUniscribeData (TYPE_1__*) ;
 int GetWindowTheme (int ) ;
 int LocalFree (scalar_t__) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static LRESULT EDIT_WM_NCDestroy(EDITSTATE *es)
{
    LINEDEF *pc, *pp;
    HTHEME theme;

    theme = GetWindowTheme(es->hwndSelf);
    CloseThemeData(theme);


    if (es->hloc32W && (es->hloc32W != es->hlocapp))
        LocalFree(es->hloc32W);

    EDIT_InvalidateUniscribeData(es);

    pc = es->first_line_def;
    while (pc)
    {
        pp = pc->next;
        heap_free(pc);
        pc = pp;
    }

    SetWindowLongPtrW( es->hwndSelf, 0, 0 );
    heap_free(es->undo_text);
    heap_free(es);

    return 0;
}
