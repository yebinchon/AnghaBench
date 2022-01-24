#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  hwndSelf; scalar_t__ region_posy; scalar_t__ region_posx; int /*<<< orphan*/  bCaptureState; scalar_t__ selection_end; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WB_LEFT ; 
 int /*<<< orphan*/  WB_RIGHT ; 

__attribute__((used)) static LRESULT FUNC8(EDITSTATE *es)
{
	INT s;
	INT e = es->selection_end;
	INT l;
	INT li;
	INT ll;

	es->bCaptureState = TRUE;
	FUNC6(es->hwndSelf);

	l = FUNC1(es, e);
	li = FUNC2(es, l);
	ll = FUNC3(es, e);
	s = li + FUNC0(es, li, e - li, ll, WB_LEFT);
	e = li + FUNC0(es, li, e - li, ll, WB_RIGHT);
	FUNC5(es, s, e, FALSE);
	FUNC4(es);
	es->region_posx = es->region_posy = 0;
	FUNC7(es->hwndSelf, 0, 100, NULL);
	return 0;
}