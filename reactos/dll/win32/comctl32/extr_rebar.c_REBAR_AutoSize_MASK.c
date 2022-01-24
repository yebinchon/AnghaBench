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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_9__ {void* rcTarget; void* rcActual; int /*<<< orphan*/  fChanged; } ;
struct TYPE_8__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  void* RECT ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ NMRBAUTOSIZE ;
typedef  int /*<<< orphan*/  NMHDR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  RBN_AUTOSIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void**) ; 

__attribute__((used)) static VOID
FUNC6(REBAR_INFO *infoPtr, BOOL needsLayout)
{
    RECT rc, rcNew;
    NMRBAUTOSIZE autosize;

    if (needsLayout)
        FUNC2(infoPtr);
    FUNC1(infoPtr->hwndSelf, &rc);
    FUNC4(infoPtr, FUNC5(infoPtr, &rc));
    FUNC1(infoPtr->hwndSelf, &rcNew);

    FUNC1(infoPtr->hwndSelf, &autosize.rcTarget);
    autosize.fChanged = FUNC0(&rc, &rcNew);
    autosize.rcTarget = rc;
    autosize.rcActual = rcNew;
    FUNC3((NMHDR *)&autosize, infoPtr, RBN_AUTOSIZE);
}