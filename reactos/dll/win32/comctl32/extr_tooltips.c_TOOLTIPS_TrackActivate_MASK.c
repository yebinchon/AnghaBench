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
struct TYPE_9__ {int nTrackTool; int /*<<< orphan*/  bTrackActive; } ;
struct TYPE_8__ {scalar_t__ cbSize; } ;
typedef  int /*<<< orphan*/  TTTOOLINFOW ;
typedef  TYPE_1__ TTTOOLINFOA ;
typedef  TYPE_2__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ TTTOOLINFOA_V1_SIZE ; 

__attribute__((used)) static LRESULT
FUNC4 (TOOLTIPS_INFO *infoPtr, BOOL track_activate, const TTTOOLINFOA *ti)
{
    if (track_activate) {

	if (!ti) return 0;
	if (ti->cbSize < TTTOOLINFOA_V1_SIZE)
	    return FALSE;

	/* activate */
	infoPtr->nTrackTool = FUNC0 (infoPtr, (const TTTOOLINFOW*)ti);
	if (infoPtr->nTrackTool != -1) {
	    FUNC3("activated\n");
	    infoPtr->bTrackActive = TRUE;
	    FUNC2 (infoPtr);
	}
    }
    else {
	/* deactivate */
	FUNC1 (infoPtr);

	infoPtr->bTrackActive = FALSE;
	infoPtr->nTrackTool = -1;

        FUNC3("deactivated\n");
    }

    return 0;
}