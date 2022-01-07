
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int selected_item; int focus_item; int style; int page_size; int nb_items; int width; int column_width; int anchor_item; TYPE_2__* lphc; scalar_t__ self; TYPE_1__* items; int owner; } ;
struct TYPE_11__ {int wState; } ;
struct TYPE_10__ {int selected; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_3__ LB_DESCR ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int CBF_NOROLLUP ;
 int FALSE ;
 int GetKeyState (int ) ;
 scalar_t__ IS_MULTISELECT (TYPE_3__*) ;
 scalar_t__ IsWindowVisible (scalar_t__) ;
 int LBN_SELCHANGE ;
 int LBS_EXTENDEDSEL ;
 int LBS_MULTICOLUMN ;
 int LBS_MULTIPLESEL ;
 int LBS_NOTIFY ;
 int LBS_WANTKEYBOARDINPUT ;
 int LISTBOX_GetCurrentPageSize (TYPE_3__*) ;
 int LISTBOX_MoveCaret (TYPE_3__*,int,int) ;
 int LISTBOX_SetSelection (TYPE_3__*,int,int,int) ;
 int LOWORD (int) ;
 int MAKEWPARAM (int ,int) ;
 int SEND_NOTIFICATION (TYPE_3__*,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;







 int VK_SHIFT ;


 int WM_VKEYTOITEM ;

__attribute__((used)) static LRESULT LISTBOX_HandleKeyDown( LB_DESCR *descr, DWORD key )
{
    INT caret = -1;
    BOOL bForceSelection = TRUE;
    if ((IS_MULTISELECT(descr)) || (descr->selected_item == descr->focus_item))
        bForceSelection = FALSE;

    if (descr->style & LBS_WANTKEYBOARDINPUT)
    {
        caret = SendMessageW( descr->owner, WM_VKEYTOITEM,
                                MAKEWPARAM(LOWORD(key), descr->focus_item),
                                (LPARAM)descr->self );
        if (caret == -2) return 0;
    }
    if (caret == -1) switch(key)
    {
    case 133:
        if (descr->style & LBS_MULTICOLUMN)
        {
            bForceSelection = FALSE;
            if (descr->focus_item >= descr->page_size)
                caret = descr->focus_item - descr->page_size;
            break;
        }

    case 128:
        caret = descr->focus_item - 1;
        if (caret < 0) caret = 0;
        break;
    case 130:
        if (descr->style & LBS_MULTICOLUMN)
        {
            bForceSelection = FALSE;
            if (descr->focus_item + descr->page_size < descr->nb_items)
                caret = descr->focus_item + descr->page_size;
            break;
        }

    case 136:
        caret = descr->focus_item + 1;
        if (caret >= descr->nb_items) caret = descr->nb_items - 1;
        break;

    case 131:
        if (descr->style & LBS_MULTICOLUMN)
        {
            INT page = descr->width / descr->column_width;
            if (page < 1) page = 1;
            caret = descr->focus_item - (page * descr->page_size) + 1;
        }
        else caret = descr->focus_item-LISTBOX_GetCurrentPageSize(descr) + 1;
        if (caret < 0) caret = 0;
        break;
    case 132:
        if (descr->style & LBS_MULTICOLUMN)
        {
            INT page = descr->width / descr->column_width;
            if (page < 1) page = 1;
            caret = descr->focus_item + (page * descr->page_size) - 1;
        }
        else caret = descr->focus_item + LISTBOX_GetCurrentPageSize(descr) - 1;
        if (caret >= descr->nb_items) caret = descr->nb_items - 1;
        break;
    case 134:
        caret = 0;
        break;
    case 135:
        caret = descr->nb_items - 1;
        break;
    case 129:
        if (descr->style & LBS_EXTENDEDSEL) caret = descr->focus_item;
        else if (descr->style & LBS_MULTIPLESEL)
        {
            LISTBOX_SetSelection( descr, descr->focus_item,
                                  !descr->items[descr->focus_item].selected,
                                  (descr->style & LBS_NOTIFY) != 0 );
        }
        break;
    default:
        bForceSelection = FALSE;
    }
    if (bForceSelection)
        caret = descr->focus_item;
    if (caret >= 0)
    {
        if (((descr->style & LBS_EXTENDEDSEL) &&
            !(GetKeyState( VK_SHIFT ) & 0x8000)) ||
            !IS_MULTISELECT(descr))
            descr->anchor_item = caret;
        LISTBOX_MoveCaret( descr, caret, TRUE );

        if (descr->style & LBS_MULTIPLESEL)
            descr->selected_item = caret;
        else
            LISTBOX_SetSelection( descr, caret, TRUE, FALSE);
        if (descr->style & LBS_NOTIFY)
        {
            if (descr->lphc && IsWindowVisible( descr->self ))
            {

                descr->lphc->wState |= CBF_NOROLLUP;
            }
            if (descr->nb_items) SEND_NOTIFICATION( descr, LBN_SELCHANGE );
        }
    }
    return 0;
}
