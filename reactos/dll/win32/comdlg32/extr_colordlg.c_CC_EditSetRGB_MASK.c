#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  updating; int /*<<< orphan*/  hwndSelf; TYPE_1__* lpcc; } ;
struct TYPE_4__ {int /*<<< orphan*/  rgbResult; } ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COLOR_EDIT_B ; 
 int /*<<< orphan*/  IDC_COLOR_EDIT_G ; 
 int /*<<< orphan*/  IDC_COLOR_EDIT_R ; 
 int /*<<< orphan*/  IDC_COLOR_GRAPH ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC6( CCPRIV *infoPtr )
{
 if (FUNC4( FUNC1(infoPtr->hwndSelf, IDC_COLOR_GRAPH) ))   /* if full size */
 {
   COLORREF cr = infoPtr->lpcc->rgbResult;
   int r = FUNC3(cr);
   int g = FUNC2(cr);
   int b = FUNC0(cr);

   infoPtr->updating = TRUE;
   FUNC5(infoPtr->hwndSelf, IDC_COLOR_EDIT_R, r, TRUE);
   FUNC5(infoPtr->hwndSelf, IDC_COLOR_EDIT_G, g, TRUE);
   FUNC5(infoPtr->hwndSelf, IDC_COLOR_EDIT_B, b, TRUE);
   infoPtr->updating = FALSE;
 }
}