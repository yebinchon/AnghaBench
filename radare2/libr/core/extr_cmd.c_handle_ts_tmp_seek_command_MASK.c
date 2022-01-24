#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int ut32 ;
struct TYPE_5__ {int /*<<< orphan*/  num; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  TSNode ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (char*,int,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(RCore *core, const char *cstr, TSNode node, bool log) {
	TSNode command = FUNC7 (node, 0);
	TSNode offset = FUNC7 (node, 1);
	ut32 offset_start = FUNC8 (offset);
	ut32 offset_end = FUNC6 (offset);
	char *offset_string = FUNC5 ("%.*s", offset_end - offset_start, cstr + offset_start);
	ut64 orig_offset = core->offset;
	FUNC0 ("tmp_seek command, command X on tmp_seek %s\n", offset_string);
	FUNC3 (core, FUNC4 (core->num, offset_string), 1);
	bool res = FUNC2 (core, cstr, command, log);
	FUNC3 (core, orig_offset, 1);
	FUNC1 (offset_string);
	return res;
}