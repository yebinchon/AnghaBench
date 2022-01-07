
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ hwndSelf; scalar_t__ hwndCombo; } ;
struct TYPE_7__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ INT ;
typedef TYPE_2__ COMBOEX_INFO ;


 scalar_t__ CB_ERR ;
 int CB_SETITEMHEIGHT ;
 int GetClientRect (scalar_t__,TYPE_1__*) ;
 int GetWindowRect (scalar_t__,TYPE_1__*) ;
 int HWND_TOP ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 scalar_t__ SendMessageW (scalar_t__,int ,scalar_t__,scalar_t__) ;
 int SetWindowPos (scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,int) ;
 int TRACE (char*,int ,scalar_t__,...) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static INT COMBOEX_SetItemHeight (COMBOEX_INFO const *infoPtr, INT index, UINT height)
{
    RECT cb_wrect, cbx_wrect, cbx_crect;



    if (infoPtr->hwndCombo)
       if (SendMessageW (infoPtr->hwndCombo, CB_SETITEMHEIGHT,
    index, height) == CB_ERR) return CB_ERR;

    GetWindowRect (infoPtr->hwndCombo, &cb_wrect);
    GetWindowRect (infoPtr->hwndSelf, &cbx_wrect);
    GetClientRect (infoPtr->hwndSelf, &cbx_crect);

    height = cb_wrect.bottom-cb_wrect.top
             + cbx_wrect.bottom-cbx_wrect.top
             - (cbx_crect.bottom-cbx_crect.top);
    TRACE("EX window=(%s), client=(%s)\n",
          wine_dbgstr_rect(&cbx_wrect), wine_dbgstr_rect(&cbx_crect));
    TRACE("CB window=(%s), EX setting=(0,0)-(%d,%d)\n",
          wine_dbgstr_rect(&cbx_wrect), cbx_wrect.right-cbx_wrect.left, height);
    SetWindowPos (infoPtr->hwndSelf, HWND_TOP, 0, 0,
    cbx_wrect.right-cbx_wrect.left, height,
    SWP_NOACTIVATE | SWP_NOZORDER | SWP_NOMOVE);

    return 0;
}
