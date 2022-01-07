
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_3__ {int style; scalar_t__ hwndSelf; int bEnableState; } ;
typedef int LPARAM ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBRUSH ;
typedef TYPE_1__ EDITSTATE ;


 scalar_t__ DefWindowProcW (int ,int ,int ,int ) ;
 int ES_READONLY ;
 int GetParent (scalar_t__) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int WM_CTLCOLOREDIT ;
 int WM_CTLCOLORSTATIC ;

__attribute__((used)) static HBRUSH EDIT_NotifyCtlColor(EDITSTATE *es, HDC hdc)
{
    HBRUSH hbrush;
    UINT msg;

    if ((!es->bEnableState || (es->style & ES_READONLY)))
        msg = WM_CTLCOLORSTATIC;
    else
        msg = WM_CTLCOLOREDIT;


    hbrush = (HBRUSH)SendMessageW(GetParent(es->hwndSelf), msg, (WPARAM)hdc, (LPARAM)es->hwndSelf);
    if (!hbrush)
        hbrush = (HBRUSH)DefWindowProcW(GetParent(es->hwndSelf), msg, (WPARAM)hdc, (LPARAM)es->hwndSelf);
    return hbrush;
}
