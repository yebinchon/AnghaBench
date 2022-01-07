
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int wState; int self; int hWndLBox; int hWndEdit; } ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* LPHEADCOMBO ;
typedef int BOOL ;


 int CBF_DROPPED ;
 int CBF_EDIT ;
 int CBF_NOREDRAW ;
 scalar_t__ CBS_SIMPLE ;
 scalar_t__ CB_GETTYPE (TYPE_2__*) ;
 int RDW_ERASE ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int ,int) ;
 int SWP_NOACTIVATE ;
 int SWP_NOREDRAW ;
 int SWP_NOZORDER ;
 int SW_HIDE ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int ShowWindow (int ,int ) ;

__attribute__((used)) static void CBResetPos(
  LPHEADCOMBO lphc,
  const RECT *rectEdit,
  const RECT *rectLB,
  BOOL bRedraw)
{
   BOOL bDrop = (CB_GETTYPE(lphc) != CBS_SIMPLE);




   if( lphc->wState & CBF_EDIT )
     SetWindowPos( lphc->hWndEdit, 0,
     rectEdit->left, rectEdit->top,
     rectEdit->right - rectEdit->left,
     rectEdit->bottom - rectEdit->top,
                       SWP_NOZORDER | SWP_NOACTIVATE | ((bDrop) ? SWP_NOREDRAW : 0) );

   SetWindowPos( lphc->hWndLBox, 0,
   rectLB->left, rectLB->top,
                 rectLB->right - rectLB->left,
   rectLB->bottom - rectLB->top,
     SWP_NOACTIVATE | SWP_NOZORDER | ((bDrop) ? SWP_NOREDRAW : 0) );

   if( bDrop )
   {
       if( lphc->wState & CBF_DROPPED )
       {
           lphc->wState &= ~CBF_DROPPED;
           ShowWindow( lphc->hWndLBox, SW_HIDE );
       }

       if( bRedraw && !(lphc->wState & CBF_NOREDRAW) )
           RedrawWindow( lphc->self, ((void*)0), 0,
                           RDW_INVALIDATE | RDW_ERASE | RDW_UPDATENOW );
   }
}
