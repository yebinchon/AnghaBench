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
struct TYPE_9__ {int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/ * font; int /*<<< orphan*/ * text; int /*<<< orphan*/  tabs; int /*<<< orphan*/  tabs_count; } ;
struct TYPE_8__ {double net_length; int index; int /*<<< orphan*/ * ssa; } ;
struct TYPE_7__ {scalar_t__ iTabOrigin; int /*<<< orphan*/  pTabStops; int /*<<< orphan*/  iScale; int /*<<< orphan*/  cTabStops; } ;
typedef  TYPE_1__ SCRIPT_TABDEF ;
typedef  int /*<<< orphan*/ * SCRIPT_STRING_ANALYSIS ;
typedef  TYPE_2__ LINEDEF ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  scalar_t__ HDC ;
typedef  TYPE_3__ EDITSTATE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int SSA_FALLBACK ; 
 int SSA_GLYPHS ; 
 int SSA_LINK ; 
 int SSA_TAB ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,double,double,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SCRIPT_STRING_ANALYSIS FUNC7(EDITSTATE *es, HDC dc, LINEDEF *line_def)
{
	if (!line_def)
		return NULL;

	if (line_def->net_length && !line_def->ssa)
	{
		int index = line_def->index;
		HFONT old_font = NULL;
		HDC udc = dc;
		SCRIPT_TABDEF tabdef;
		HRESULT hr;

		if (!udc)
			udc = FUNC2(es->hwndSelf);
		if (es->font)
			old_font = FUNC5(udc, es->font);

		tabdef.cTabStops = es->tabs_count;
		tabdef.iScale = FUNC1(udc, NULL, NULL);
		tabdef.pTabStops = es->tabs;
		tabdef.iTabOrigin = 0;

		hr = FUNC4(udc, &es->text[index], line_def->net_length,
                                         (1.5*line_def->net_length+16), -1,
                                         SSA_LINK|SSA_FALLBACK|SSA_GLYPHS|SSA_TAB, -1,
                                         NULL, NULL, NULL, &tabdef, NULL, &line_def->ssa);
		if (FUNC0(hr))
		{
			FUNC6("ScriptStringAnalyse failed (%x)\n",hr);
			line_def->ssa = NULL;
		}

		if (es->font)
			FUNC5(udc, old_font);
		if (udc != dc)
			FUNC3(es->hwndSelf, udc);
	}

	return line_def->ssa;
}