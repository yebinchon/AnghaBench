#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int wState; scalar_t__ hWndLBox; int /*<<< orphan*/  textRect; int /*<<< orphan*/  buttonRect; int /*<<< orphan*/  self; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CBF_DROPPED ; 
 int CBF_NOREDRAW ; 
 int /*<<< orphan*/  CBN_CLOSEUP ; 
 int /*<<< orphan*/  CBN_SELENDCANCEL ; 
 int /*<<< orphan*/  CBN_SELENDOK ; 
 scalar_t__ CBS_DROPDOWN ; 
 scalar_t__ CBS_SIMPLE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int RDW_ERASE ; 
 int RDW_INVALIDATE ; 
 int RDW_NOCHILDREN ; 
 int RDW_UPDATENOW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9( LPHEADCOMBO lphc, BOOL ok, BOOL bButton )
{
   HWND	hWnd = lphc->self;

   FUNC7("[%p]: sel ok? [%i] dropped? [%i]\n",
	 lphc->self, ok, (INT)(lphc->wState & CBF_DROPPED));

   FUNC1( lphc, (ok) ? CBN_SELENDOK : CBN_SELENDCANCEL );

   if( FUNC3( hWnd ) && FUNC0(lphc) != CBS_SIMPLE )
   {

       if( lphc->wState & CBF_DROPPED )
       {
	   RECT	rect;

	   lphc->wState &= ~CBF_DROPPED;
	   FUNC6( lphc->hWndLBox, SW_HIDE );

           if(FUNC2() == lphc->hWndLBox)
           {
               FUNC5();
           }

	   if( FUNC0(lphc) == CBS_DROPDOWN )
	   {
	       rect = lphc->buttonRect;
	   }
	   else
           {
	       if( bButton )
	       {
		 FUNC8( &rect,
			    &lphc->buttonRect,
			    &lphc->textRect);
	       }
	       else
		 rect = lphc->textRect;

	       bButton = TRUE;
	   }

	   if( bButton && !(lphc->wState & CBF_NOREDRAW) )
	       FUNC4( hWnd, &rect, 0, RDW_INVALIDATE |
			       RDW_ERASE | RDW_UPDATENOW | RDW_NOCHILDREN );
	   FUNC1( lphc, CBN_CLOSEUP );
       }
   }
}