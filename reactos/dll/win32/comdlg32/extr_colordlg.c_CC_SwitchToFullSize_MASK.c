#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int IDC_COLOR_ADD ; 
 int IDC_COLOR_BL ; 
 int IDC_COLOR_DEFINE ; 
 int IDC_COLOR_EDIT_B ; 
 int IDC_COLOR_EDIT_H ; 
 int IDC_COLOR_GRAPH ; 
 int IDC_COLOR_HL ; 
 int IDC_COLOR_LUMBAR ; 
 int IDC_COLOR_RES ; 
 int IDC_COLOR_RESULT ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8( CCPRIV *infoPtr, const RECT *lprect )
{
 int i;

 FUNC3( FUNC4(infoPtr->hwndSelf, IDC_COLOR_DEFINE), FALSE);
 FUNC2(infoPtr);
 for (i = IDC_COLOR_EDIT_H; i <= IDC_COLOR_EDIT_B; i++)
   FUNC6( FUNC4(infoPtr->hwndSelf, i), SW_SHOW);
 for (i = IDC_COLOR_HL; i <= IDC_COLOR_BL; i++)
   FUNC6( FUNC4(infoPtr->hwndSelf, i), SW_SHOW);
 FUNC6( FUNC4(infoPtr->hwndSelf, IDC_COLOR_RES), SW_SHOW);
 FUNC6( FUNC4(infoPtr->hwndSelf, IDC_COLOR_ADD), SW_SHOW);
 FUNC6( FUNC4(infoPtr->hwndSelf, 1090), SW_SHOW);

 if (lprect)
  FUNC5(infoPtr->hwndSelf, 0, 0, 0, lprect->right-lprect->left,
   lprect->bottom-lprect->top, SWP_NOMOVE|SWP_NOZORDER);

 FUNC6( FUNC4(infoPtr->hwndSelf, IDC_COLOR_LUMBAR), SW_SHOW);
 FUNC6( FUNC4(infoPtr->hwndSelf, IDC_COLOR_RESULT), SW_SHOW);

 FUNC1(infoPtr);
 FUNC0(infoPtr);
 FUNC6( FUNC4( infoPtr->hwndSelf, IDC_COLOR_GRAPH), SW_SHOW);
 FUNC7( FUNC4(infoPtr->hwndSelf, IDC_COLOR_GRAPH) );
}