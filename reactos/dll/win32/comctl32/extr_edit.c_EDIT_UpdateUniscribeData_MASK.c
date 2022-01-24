#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int style; TYPE_1__* first_line_def; int /*<<< orphan*/  ssa; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/ * font; int /*<<< orphan*/ * text; int /*<<< orphan*/  password_char; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef  int /*<<< orphan*/  SCRIPT_STRING_ANALYSIS ;
typedef  TYPE_1__ LINEDEF ;
typedef  double INT ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  scalar_t__ HDC ;
typedef  TYPE_2__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,TYPE_1__*) ; 
 int ES_MULTILINE ; 
 int ES_PASSWORD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int SSA_FALLBACK ; 
 int SSA_GLYPHS ; 
 int SSA_LINK ; 
 int SSA_PASSWORD ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,double,double,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 double FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static SCRIPT_STRING_ANALYSIS FUNC6(EDITSTATE *es, HDC dc, INT line)
{
	LINEDEF *line_def;

	if (!(es->style & ES_MULTILINE))
	{
		if (!es->ssa)
		{
			INT length = FUNC5(es);
			HFONT old_font = NULL;
			HDC udc = dc;

			if (!udc)
				udc = FUNC1(es->hwndSelf);
			if (es->font)
				old_font = FUNC4(udc, es->font);

			if (es->style & ES_PASSWORD)
				FUNC3(udc, &es->password_char, length, (1.5*length+16), -1, SSA_LINK|SSA_FALLBACK|SSA_GLYPHS|SSA_PASSWORD, -1, NULL, NULL, NULL, NULL, NULL, &es->ssa);
			else
				FUNC3(udc, es->text, length, (1.5*length+16), -1, SSA_LINK|SSA_FALLBACK|SSA_GLYPHS, -1, NULL, NULL, NULL, NULL, NULL, &es->ssa);

			if (es->font)
				FUNC4(udc, old_font);
			if (udc != dc)
				FUNC2(es->hwndSelf, udc);
		}
		return es->ssa;
	}
	else
	{
		line_def = es->first_line_def;
		while (line_def && line)
		{
			line_def = line_def->next;
			line--;
		}

		return FUNC0(es,dc,line_def);
	}
}