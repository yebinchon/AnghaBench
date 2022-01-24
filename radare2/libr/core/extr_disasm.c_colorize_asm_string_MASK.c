#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  addr; } ;
struct TYPE_14__ {int /*<<< orphan*/  print; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; } ;
struct TYPE_13__ {char* opstr; int /*<<< orphan*/  color_num; int /*<<< orphan*/  color_reg; TYPE_2__* core; TYPE_1__ analop; int /*<<< orphan*/  colorop; int /*<<< orphan*/  show_color; int /*<<< orphan*/  vat; scalar_t__ show_color_args; int /*<<< orphan*/  at; int /*<<< orphan*/  asmop; } ;
struct TYPE_12__ {int /*<<< orphan*/  print; int /*<<< orphan*/  anal; } ;
typedef  TYPE_3__ RDisasmState ;
typedef  TYPE_4__ RCore ;
typedef  TYPE_5__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_NULL ; 
 int /*<<< orphan*/  R_META_TYPE_HIGHLIGHT ; 
 TYPE_5__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,int) ; 
 char* FUNC9 (char*,char*,char*) ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static char *FUNC12(RCore *core, RDisasmState *ds, bool print_color) {
	char *source = ds->opstr? ds->opstr: FUNC3 (&ds->asmop);
	char *hlstr = FUNC5 (ds->core->anal, R_META_TYPE_HIGHLIGHT, ds->at);
	bool partial_reset = FUNC2 (ds) ? true : ((hlstr && *hlstr) ? true : false);
	FUNC1 (hlstr);
	RAnalFunction *f = ds->show_color_args ? FUNC0 (ds, ds->vat, R_ANAL_FCN_TYPE_NULL) : NULL;

	if (!ds->show_color || !ds->colorop) {
		return FUNC10 (source);
	}

	if (print_color) {
		FUNC4 (FUNC6 (core->print, ds->analop.type));
	}
	// workaround dummy colorizer in case of paired commands (tms320 & friends)
	char *spacer = FUNC11 (source, "||");
	if (spacer) {
		char *scol1, *s1 = FUNC8 (source, spacer - source);
		char *scol2, *s2 = FUNC10 (spacer + 2);

		scol1 = FUNC7 (ds->core->print, s1, ds->color_reg, ds->color_num, partial_reset, f ? f->addr : 0);
		FUNC1 (s1);
		scol2 = FUNC7 (ds->core->print, s2, ds->color_reg, ds->color_num, partial_reset, f ? f->addr : 0);
		FUNC1 (s2);
		if (!scol1) {
			scol1 = FUNC10 ("");
		}
		if (!scol2) {
			scol2 = FUNC10 ("");
		}
		source = FUNC9 ("%s||%s", scol1, scol2);
		FUNC1 (scol1);
		FUNC1 (scol2);
		return source;
	}
	return FUNC7 (ds->core->print, source, ds->color_reg, ds->color_num, partial_reset, f ? f->addr : 0);
}