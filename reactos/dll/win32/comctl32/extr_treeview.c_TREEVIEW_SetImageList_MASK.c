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
typedef  int UINT ;
struct TYPE_8__ {int normalImageWidth; int normalImageHeight; int stateImageWidth; int stateImageHeight; scalar_t__ uIndent; int /*<<< orphan*/  root; int /*<<< orphan*/  uItemHeight; int /*<<< orphan*/  bHeightSet; void* himlState; void* himlNormal; } ;
typedef  TYPE_1__ TREEVIEW_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  void* HIMAGELIST ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (void*,int*,int*) ; 
 scalar_t__ MINIMUM_INDENT ; 
 int /*<<< orphan*/  FUNC2 (char*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
#define  TVSIL_NORMAL 129 
#define  TVSIL_STATE 128 

__attribute__((used)) static LRESULT
FUNC8(TREEVIEW_INFO *infoPtr, UINT type, HIMAGELIST himlNew)
{
    HIMAGELIST himlOld = 0;
    int oldWidth  = infoPtr->normalImageWidth;
    int oldHeight = infoPtr->normalImageHeight;

    FUNC2("%u,%p\n", type, himlNew);

    switch (type)
    {
    case TVSIL_NORMAL:
	himlOld = infoPtr->himlNormal;
	infoPtr->himlNormal = himlNew;

	if (himlNew)
	    FUNC1(himlNew, &infoPtr->normalImageWidth,
				  &infoPtr->normalImageHeight);
	else
	{
	    infoPtr->normalImageWidth = 0;
	    infoPtr->normalImageHeight = 0;
	}

	break;

    case TVSIL_STATE:
	himlOld = infoPtr->himlState;
	infoPtr->himlState = himlNew;

	if (himlNew)
	    FUNC1(himlNew, &infoPtr->stateImageWidth,
				  &infoPtr->stateImageHeight);
	else
	{
	    infoPtr->stateImageWidth = 0;
	    infoPtr->stateImageHeight = 0;
	}

	break;

    default:
        FUNC0("unknown imagelist type %u\n", type);
    }

    if (oldWidth != infoPtr->normalImageWidth ||
        oldHeight != infoPtr->normalImageHeight)
    {
        BOOL bRecalcVisible = FALSE;

        if (oldHeight != infoPtr->normalImageHeight &&
            !infoPtr->bHeightSet)
        {
            infoPtr->uItemHeight = FUNC4(infoPtr);
            bRecalcVisible = TRUE;
        }

        if (infoPtr->normalImageWidth > MINIMUM_INDENT &&
            infoPtr->normalImageWidth != infoPtr->uIndent)
        {
            infoPtr->uIndent = infoPtr->normalImageWidth;
            bRecalcVisible = TRUE;
        }

        if (bRecalcVisible)
            FUNC5(infoPtr, NULL);

       FUNC7(infoPtr, infoPtr->root);
       FUNC6(infoPtr);
    }

    FUNC3(infoPtr, NULL);

    return (LRESULT)himlOld;
}