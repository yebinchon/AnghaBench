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
struct TYPE_5__ {int wState; int /*<<< orphan*/  textRect; int /*<<< orphan*/  self; int /*<<< orphan*/  hWndLBox; } ;
typedef  TYPE_1__* LPHEADCOMBO ;

/* Variables and functions */
 int CBF_EDIT ; 
 int CBF_FOCUSED ; 
 int /*<<< orphan*/  CBN_SETFOCUS ; 
 scalar_t__ CBS_DROPDOWNLIST ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_CARETON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC4( LPHEADCOMBO lphc )
{
   if( !(lphc->wState & CBF_FOCUSED) )
   {
       if( FUNC0(lphc) == CBS_DROPDOWNLIST )
           FUNC3(lphc->hWndLBox, LB_CARETON, 0, 0);

       /* This is wrong. Message sequences seem to indicate that this
          is set *after* the notify. */
       /* lphc->wState |= CBF_FOCUSED;  */

       if( !(lphc->wState & CBF_EDIT) )
	 FUNC2(lphc->self, &lphc->textRect, TRUE);

       FUNC1( lphc, CBN_SETFOCUS );
       lphc->wState |= CBF_FOCUSED;
   }
}