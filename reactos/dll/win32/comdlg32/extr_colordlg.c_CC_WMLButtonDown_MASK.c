#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* lpcc; void* l; void* s; void* h; int /*<<< orphan*/  hwndSelf; void* capturedGraph; } ;
struct TYPE_11__ {int /*<<< orphan*/  rgbResult; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,void**,void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 void* FUNC9 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 void* IDC_COLOR_GRAPH ; 
 void* IDC_COLOR_LUMBAR ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC11( CCPRIV *infoPtr, LPARAM lParam )
{
   int i = 0;

   if (FUNC4(infoPtr, 6, 8, lParam))
      i = 1;
   else
      if (FUNC5(infoPtr, 2, 8, lParam))
         i = 1;
      else
	 if (FUNC3(infoPtr->hwndSelf, IDC_COLOR_GRAPH, &infoPtr->h, &infoPtr->s, lParam))
         {
	    i = 2;
            infoPtr->capturedGraph = IDC_COLOR_GRAPH;
         }
	 else
	    if (FUNC3(infoPtr->hwndSelf, IDC_COLOR_LUMBAR, NULL, &infoPtr->l, lParam))
            {
	       i = 2;
               infoPtr->capturedGraph = IDC_COLOR_LUMBAR;
            }
   if ( i == 2 )
   {
      FUNC10(infoPtr->hwndSelf);
      infoPtr->lpcc->rgbResult = FUNC2(infoPtr->h, infoPtr->s, infoPtr->l);
   }
   if ( i == 1 )
   {
      infoPtr->h = FUNC9('H', infoPtr->lpcc->rgbResult);
      infoPtr->s = FUNC9('S', infoPtr->lpcc->rgbResult);
      infoPtr->l = FUNC9('L', infoPtr->lpcc->rgbResult);
   }
   if (i)
   {
      FUNC1(infoPtr);
      FUNC0(infoPtr);
      FUNC6(infoPtr);
      FUNC8(infoPtr);
      FUNC7(infoPtr);
      return TRUE;
   }
   return FALSE;
}