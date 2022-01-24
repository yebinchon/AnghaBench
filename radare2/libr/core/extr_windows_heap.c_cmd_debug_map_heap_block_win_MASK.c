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
typedef  scalar_t__ ut64 ;
struct TYPE_9__ {struct TYPE_9__* extraInfo; scalar_t__ unusedBytes; scalar_t__ dwSize; int /*<<< orphan*/  dwFlags; scalar_t__ granularity; } ;
struct TYPE_8__ {int /*<<< orphan*/  dbg; int /*<<< orphan*/  num; } ;
typedef  int /*<<< orphan*/  RTable ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  PJ ;
typedef  TYPE_2__* PHeapBlock ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  help_msg_block ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 char* FUNC17 (char const*,char) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char const) ; 

__attribute__((used)) static void FUNC19(RCore *core, const char *input) {
	char *space = FUNC17 (input, ' ');
	ut64 off = 0;
	PHeapBlock hb = NULL;
	if (space) {
		off = FUNC13 (core->num, space + 1);
		PHeapBlock hb = FUNC0 (core->dbg, off);
		if (hb) {
			ut64 granularity = hb->extraInfo->granularity;
			char *type = FUNC3 (hb->dwFlags);
			if (!type) {
				type = "";
			}
			PJ *pj = FUNC8 ();
			RTable *tbl = FUNC1 ();
			ut64 headerAddr = off - granularity;
			switch (input[0]) {
			case ' ':
				FUNC14 (tbl, "xxnnns", headerAddr, off, (ut64)hb->dwSize, granularity, (ut64)hb->extraInfo->unusedBytes, type);
				FUNC11 (FUNC16 (tbl));
				break;
			case 'j':
				FUNC9 (pj);
				FUNC6 (pj, "header_address", headerAddr);
				FUNC6 (pj, "user_address", off);
				FUNC7 (pj, "type", type);
				FUNC6 (pj, "size", hb->dwSize);
				if (hb->extraInfo->unusedBytes) {
					FUNC6 (pj, "unused", hb->extraInfo->unusedBytes);
				}
				FUNC4 (pj);
				FUNC11 (FUNC10 (pj));
			}
			FUNC2 (hb->extraInfo);
			FUNC2 (hb);
			FUNC15 (tbl);
			FUNC5 (pj);
		}
		return;
	}
	switch (input[0]) {
	case '\0':
	case 'f':
	case 'j':
		FUNC18 (core, input[0]);
		break;
	default:
		FUNC12 (core, help_msg_block);
	}
}