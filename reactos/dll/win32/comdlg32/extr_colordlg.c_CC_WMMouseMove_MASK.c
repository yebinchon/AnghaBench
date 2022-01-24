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
struct TYPE_10__ {scalar_t__ capturedGraph; int l; int h; int s; TYPE_1__* lpcc; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_9__ {int /*<<< orphan*/  rgbResult; } ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ IDC_COLOR_GRAPH ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static LRESULT FUNC8( CCPRIV *infoPtr, LPARAM lParam )
{
   if (infoPtr->capturedGraph)
   {
      int *ptrh = NULL, *ptrs = &infoPtr->l;
      if (infoPtr->capturedGraph == IDC_COLOR_GRAPH)
      {
          ptrh = &infoPtr->h;
          ptrs = &infoPtr->s;
      }
      if (FUNC3( infoPtr->hwndSelf, infoPtr->capturedGraph, ptrh, ptrs, lParam))
      {
          infoPtr->lpcc->rgbResult = FUNC2(infoPtr->h, infoPtr->s, infoPtr->l);
          FUNC1(infoPtr);
          FUNC0(infoPtr);
          FUNC4(infoPtr);
          FUNC6(infoPtr);
          FUNC5(infoPtr);
      }
      else
      {
          FUNC7();
          infoPtr->capturedGraph = 0;
      }
      return 1;
   }
   return 0;
}