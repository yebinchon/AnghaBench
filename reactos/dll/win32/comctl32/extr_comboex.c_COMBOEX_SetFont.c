
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {scalar_t__ hwndCombo; scalar_t__ hwndEdit; scalar_t__ font; } ;
typedef int LRESULT ;
typedef scalar_t__ HFONT ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef scalar_t__ BOOL ;


 int COMBOEX_ReSize (TYPE_1__*) ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRUE ;
 int WM_SETFONT ;

__attribute__((used)) static LRESULT COMBOEX_SetFont( COMBOEX_INFO *infoPtr, HFONT font, BOOL redraw )
{
    infoPtr->font = font;
    SendMessageW( infoPtr->hwndCombo, WM_SETFONT, (WPARAM)font, 0 );
    if (infoPtr->hwndEdit) SendMessageW( infoPtr->hwndEdit, WM_SETFONT, (WPARAM)font, 0 );
    COMBOEX_ReSize( infoPtr );
    if (redraw) InvalidateRect( infoPtr->hwndCombo, ((void*)0), TRUE );
    return 0;
}
