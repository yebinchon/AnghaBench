#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_9__ {TYPE_1__* esil; } ;
struct TYPE_8__ {TYPE_3__* anal; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {scalar_t__ address; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_REF_TYPE_DATA ; 
 int /*<<< orphan*/  R_FLAGS_FS_STRINGS ; 
 scalar_t__ UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_2__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(RCore *core, ut64 xref_from, ut64 xref_to) {
	int len = 0;
	if (xref_to == UT64_MAX || !xref_to) {
		return;
	}
	if (!xref_from || xref_from == UT64_MAX) {
		xref_from = core->anal->esil->address;
	}
	char *str_flagname = FUNC1 (core, xref_to, &len);
	if (str_flagname) {
		FUNC2 (core->anal, xref_from, xref_to, R_ANAL_REF_TYPE_DATA);
		FUNC7 (str_flagname, -1);
		char *flagname = FUNC8 ("str.%s", str_flagname);
		FUNC5 (core->flags, R_FLAGS_FS_STRINGS);
		FUNC3 (core->flags, flagname, xref_to, len);
		FUNC4 (core->flags);
		FUNC6 (core->anal, 's', xref_to, xref_to + len, str_flagname);
		FUNC0 (str_flagname);
	}
}