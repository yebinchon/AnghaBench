#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int wState; int /*<<< orphan*/  buttonRect; int /*<<< orphan*/  self; } ;
struct TYPE_9__ {short x; short y; } ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int CBF_BUTTONDOWN ; 
 int CBF_CAPTURE ; 
 int CBF_DROPPED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CBS_DROPDOWN ; 
 scalar_t__ CBS_DROPDOWNLIST ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC10( LPHEADCOMBO lphc, LPARAM lParam )
{
   POINT     pt;
   BOOL      bButton;
   HWND      hWnd = lphc->self;

   pt.x = (short)FUNC6(lParam);
   pt.y = (short)FUNC4(lParam);
   bButton = FUNC7(&lphc->buttonRect, pt);

   if( (FUNC3(lphc) == CBS_DROPDOWNLIST) ||
       (bButton && (FUNC3(lphc) == CBS_DROPDOWN)) )
   {
       lphc->wState |= CBF_BUTTONDOWN;
       if( lphc->wState & CBF_DROPPED )
       {
	   /* got a click to cancel selection */

           lphc->wState &= ~CBF_BUTTONDOWN;
           FUNC2( lphc, TRUE, FALSE );
	   if( !FUNC5( hWnd ) ) return;

           if( lphc->wState & CBF_CAPTURE )
           {
               lphc->wState &= ~CBF_CAPTURE;
               FUNC8();
           }
       }
       else
       {
	   /* drop down the listbox and start tracking */

           lphc->wState |= CBF_CAPTURE;
           FUNC9( hWnd );
           FUNC0( lphc );
       }
       if( bButton ) FUNC1( lphc );
   }
}