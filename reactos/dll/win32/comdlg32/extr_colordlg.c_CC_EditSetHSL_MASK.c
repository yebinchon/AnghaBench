#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  updating; int /*<<< orphan*/  l; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  s; int /*<<< orphan*/  h; } ;
typedef  TYPE_1__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COLOR_EDIT_H ; 
 int /*<<< orphan*/  IDC_COLOR_EDIT_L ; 
 int /*<<< orphan*/  IDC_COLOR_EDIT_S ; 
 int /*<<< orphan*/  IDC_COLOR_GRAPH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC4( CCPRIV *infoPtr )
{
 if (FUNC2( FUNC1(infoPtr->hwndSelf, IDC_COLOR_GRAPH) ))   /* if full size */
 {
   infoPtr->updating = TRUE;
   FUNC3(infoPtr->hwndSelf, IDC_COLOR_EDIT_H, infoPtr->h, TRUE);
   FUNC3(infoPtr->hwndSelf, IDC_COLOR_EDIT_S, infoPtr->s, TRUE);
   FUNC3(infoPtr->hwndSelf, IDC_COLOR_EDIT_L, infoPtr->l, TRUE);
   infoPtr->updating = FALSE;
 }
 FUNC0(infoPtr);
}