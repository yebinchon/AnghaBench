#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int editHeight; int /*<<< orphan*/  hWndLBox; int /*<<< orphan*/  droppedRect; int /*<<< orphan*/  textRect; int /*<<< orphan*/  buttonRect; int /*<<< orphan*/  self; } ;
typedef  int LRESULT ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ CBS_SIMPLE ; 
 int CB_ERR ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  LB_SETITEMHEIGHT ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC6( LPHEADCOMBO lphc, INT index, INT height )
{
   LRESULT	lRet = CB_ERR;

   if( index == -1 ) /* set text field height */
   {
       if( height < 32768 )
       {
           lphc->editHeight = height + 2;  /* Is the 2 for 2*EDIT_CONTROL_PADDING? */

	 /*
	  * Redo the layout of the control.
	  */
	 if ( FUNC3(lphc) == CBS_SIMPLE)
	 {
	   FUNC0(lphc->self,
			   lphc,
			   &lphc->textRect,
			   &lphc->buttonRect,
			   &lphc->droppedRect);

	   FUNC2( lphc, &lphc->textRect, &lphc->droppedRect, TRUE );
	 }
	 else
	 {
	   FUNC1(lphc);
	 }

	   lRet = height;
       }
   }
   else if ( FUNC4(lphc) )	/* set listbox item height */
       lRet = FUNC5(lphc->hWndLBox, LB_SETITEMHEIGHT, index, height);
   return lRet;
}