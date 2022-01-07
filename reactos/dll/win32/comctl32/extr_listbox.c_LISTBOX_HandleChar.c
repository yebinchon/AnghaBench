
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_8__ {int style; int selected_item; scalar_t__ nb_items; int focus_item; scalar_t__ self; int owner; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_1__ LB_DESCR ;
typedef int INT ;


 int FALSE ;
 int IS_MULTISELECT (TYPE_1__*) ;
 int LBN_SELCHANGE ;
 int LBS_NOTIFY ;
 int LBS_WANTKEYBOARDINPUT ;
 int LISTBOX_FindString (TYPE_1__*,int ,char*,int ) ;
 int LISTBOX_MoveCaret (TYPE_1__*,int,int ) ;
 int LISTBOX_SetSelection (TYPE_1__*,int,int ,int ) ;
 int MAKEWPARAM (char,int ) ;
 int SEND_NOTIFICATION (TYPE_1__*,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int WM_CHARTOITEM ;

__attribute__((used)) static LRESULT LISTBOX_HandleChar( LB_DESCR *descr, WCHAR charW )
{
    INT caret = -1;
    WCHAR str[2];

    str[0] = charW;
    str[1] = '\0';

    if (descr->style & LBS_WANTKEYBOARDINPUT)
    {
        caret = SendMessageW( descr->owner, WM_CHARTOITEM,
                                MAKEWPARAM(charW, descr->focus_item),
                                (LPARAM)descr->self );
        if (caret == -2) return 0;
    }
    if (caret == -1)
        caret = LISTBOX_FindString( descr, descr->focus_item, str, FALSE);
    if (caret != -1)
    {
        if ((!IS_MULTISELECT(descr)) && descr->selected_item == -1)
           LISTBOX_SetSelection( descr, caret, TRUE, FALSE);
        LISTBOX_MoveCaret( descr, caret, TRUE );
        if ((descr->style & LBS_NOTIFY) && descr->nb_items)
            SEND_NOTIFICATION( descr, LBN_SELCHANGE );
    }
    return 0;
}
