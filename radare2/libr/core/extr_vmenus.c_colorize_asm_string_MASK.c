#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {int /*<<< orphan*/  addr; } ;
struct TYPE_13__ {TYPE_6__* print; int /*<<< orphan*/  anal; TYPE_3__* cons; } ;
struct TYPE_12__ {TYPE_2__* context; } ;
struct TYPE_10__ {char* num; char* reg; } ;
struct TYPE_11__ {TYPE_1__ pal; } ;
typedef  TYPE_4__ RCore ;
typedef  TYPE_5__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_NULL ; 
 int R_PRINT_FLAGS_COLOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_6__*,int) ; 
 char* FUNC3 (TYPE_6__*,char*,char const*,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 

__attribute__((used)) static char *FUNC10(RCore *core, const char *buf_asm, int optype, ut64 addr) {
	char *tmp, *spacer = NULL;
	char *source = (char*)buf_asm;
	bool use_color = core->print->flags & R_PRINT_FLAGS_COLOR;
	const char *color_num = core->cons->context->pal.num;
	const char *color_reg = core->cons->context->pal.reg;
	RAnalFunction* fcn = FUNC1 (core->anal, addr, R_ANAL_FCN_TYPE_NULL);

	if (!use_color) {
		return FUNC8 (source);
	}
	// workaround dummy colorizer in case of paired commands (tms320 & friends)
	spacer = FUNC9 (source, "||");
	if (spacer) {
		char *s1 = FUNC6 (source, spacer - source);
		char *s2 = FUNC8 (spacer + 2);
		char *scol1 = FUNC3 (core->print, s1, color_reg, color_num, false, fcn ? fcn->addr : 0);
		char *scol2 = FUNC3 (core->print, s2, color_reg, color_num, false, fcn ? fcn->addr : 0);
		char *source = FUNC7 ("%s||%s", FUNC5 (scol1), FUNC5 (scol2));
		FUNC0 (scol1);
		FUNC0 (scol2);
		FUNC0 (s1);
		FUNC0 (s2);
		return source;
	}
	char *res = FUNC8 ("");
	res = FUNC4 (res, FUNC2 (core->print, optype));
	tmp = FUNC3 (core->print, source, color_reg, color_num, false, fcn ? fcn->addr : 0);
	res = FUNC4 (res, tmp);
	FUNC0 (tmp);
	return res;
}