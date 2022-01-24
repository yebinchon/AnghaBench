#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_4__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  anal; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  R_META_TYPE_VARTYPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  help_msg_Ct ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 char* FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (char const*) ; 

__attribute__((used)) static int FUNC16(RCore *core, const char *input) {
	ut64 addr = core->offset;
	switch (input[1]) {
	case '?': // "Ct?"
		FUNC3 (core, help_msg_Ct);
		break;
	case 0: // "Ct"
		FUNC6 (core->anal, R_META_TYPE_VARTYPE, 0);
		break;
	case ' ': // "Ct <vartype comment> @ addr"
		{
		const char* newcomment = FUNC9 (input + 2);
		char *text, *comment = FUNC5 (core->anal, R_META_TYPE_VARTYPE, addr);
		char *nc = FUNC14 (newcomment);
		FUNC10 (nc);
		if (comment) {
			text = FUNC1 (FUNC15 (comment)+ FUNC15 (newcomment)+2);
			if (text) {
				FUNC13 (text, comment);
				FUNC12 (text, " ");
				FUNC12 (text, nc);
				FUNC7 (core->anal, R_META_TYPE_VARTYPE, addr, text);
				FUNC0 (comment);
				FUNC0 (text);
			} else {
				FUNC11 ("malloc");
			}
		} else {
			FUNC7 (core->anal, R_META_TYPE_VARTYPE, addr, nc);
		}
		FUNC0 (nc);
		}
		break;
	case '.': // "Ct. @ addr"
		{
		ut64 at = input[2]? FUNC8 (core->num, input + 2): addr;
		char *comment = FUNC5 (
				core->anal, R_META_TYPE_VARTYPE, at);
		if (comment) {
			FUNC2 (comment);
			FUNC0 (comment);
		}
		}
		break;
	case '-': // "Ct-"
		FUNC4 (core->anal, R_META_TYPE_VARTYPE, core->offset, 1);
		break;
	default:
		FUNC3 (core, help_msg_Ct);
		break;
	}

	return true;
}