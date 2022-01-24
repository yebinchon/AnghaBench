#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_7__ {int wState; int /*<<< orphan*/  droppedRect; int /*<<< orphan*/  textRect; int /*<<< orphan*/  buttonRect; int /*<<< orphan*/  self; int /*<<< orphan*/  hWndLBox; int /*<<< orphan*/  hWndEdit; scalar_t__ hFont; } ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int CBF_EDIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ CBS_SIMPLE ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETFONT ; 

__attribute__((used)) static void FUNC5( LPHEADCOMBO lphc, HFONT hFont, BOOL bRedraw )
{
  /*
   * Set the font
   */
  lphc->hFont = hFont;

  /*
   * Propagate to owned windows.
   */
  if( lphc->wState & CBF_EDIT )
      FUNC4(lphc->hWndEdit, WM_SETFONT, (WPARAM)hFont, bRedraw);
  FUNC4(lphc->hWndLBox, WM_SETFONT, (WPARAM)hFont, bRedraw);

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
}