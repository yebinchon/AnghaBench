#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* tools; } ;
struct TYPE_9__ {scalar_t__ cbSize; int /*<<< orphan*/  rect; } ;
struct TYPE_8__ {int /*<<< orphan*/  rect; } ;
typedef  TYPE_2__ TTTOOLINFOW ;
typedef  TYPE_3__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (TYPE_3__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ TTTOOLINFOW_V1_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC3 (TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *ti)
{
    INT nTool;

    if (!ti) return 0;
    if (ti->cbSize < TTTOOLINFOW_V1_SIZE)
	return FALSE;

    nTool = FUNC0 (infoPtr, ti);

    FUNC1("nTool = %d, rect = %s\n", nTool, FUNC2(&ti->rect));

    if (nTool == -1) return 0;

    infoPtr->tools[nTool].rect = ti->rect;

    return 0;
}