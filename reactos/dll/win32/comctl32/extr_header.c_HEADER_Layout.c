
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int dwStyle; int bRectsValid; scalar_t__ nHeight; int hwndSelf; } ;
struct TYPE_9__ {TYPE_2__* pwpos; TYPE_1__* prc; } ;
struct TYPE_8__ {scalar_t__ cy; scalar_t__ cx; int y; scalar_t__ x; int flags; scalar_t__ hwndInsertAfter; int hwnd; } ;
struct TYPE_7__ {int top; scalar_t__ left; scalar_t__ right; } ;
typedef int LRESULT ;
typedef TYPE_3__* LPHDLAYOUT ;
typedef TYPE_4__ HEADER_INFO ;


 int FALSE ;
 int HDS_HIDDEN ;
 int SWP_NOZORDER ;
 int TRACE (char*,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static LRESULT
HEADER_Layout (HEADER_INFO *infoPtr, LPHDLAYOUT lpLayout)
{
    lpLayout->pwpos->hwnd = infoPtr->hwndSelf;
    lpLayout->pwpos->hwndInsertAfter = 0;
    lpLayout->pwpos->x = lpLayout->prc->left;
    lpLayout->pwpos->y = lpLayout->prc->top;
    lpLayout->pwpos->cx = lpLayout->prc->right - lpLayout->prc->left;
    if (infoPtr->dwStyle & HDS_HIDDEN)
        lpLayout->pwpos->cy = 0;
    else {
        lpLayout->pwpos->cy = infoPtr->nHeight;
        lpLayout->prc->top += infoPtr->nHeight;
    }
    lpLayout->pwpos->flags = SWP_NOZORDER;

    TRACE("Layout x=%d y=%d cx=%d cy=%d\n",
           lpLayout->pwpos->x, lpLayout->pwpos->y,
           lpLayout->pwpos->cx, lpLayout->pwpos->cy);

    infoPtr->bRectsValid = FALSE;

    return TRUE;
}
