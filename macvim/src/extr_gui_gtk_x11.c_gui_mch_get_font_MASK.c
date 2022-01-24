#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_5__ {int /*<<< orphan*/  text_context; int /*<<< orphan*/  in_use; } ;
struct TYPE_4__ {scalar_t__ vc_type; } ;
typedef  int /*<<< orphan*/  PangoFontDescription ;
typedef  int /*<<< orphan*/  PangoFont ;
typedef  int /*<<< orphan*/ * GuiFont ;

/* Variables and functions */
 scalar_t__ CONV_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int PANGO_SCALE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ e_font ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__ gui ; 
 TYPE_1__ output_conv ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

GuiFont
FUNC10(char_u *name, int report_error)
{
    PangoFontDescription    *font;

    /* can't do this when GUI is not running */
    if (!gui.in_use || name == NULL)
	return NULL;

    if (output_conv.vc_type != CONV_NONE)
    {
	char_u *buf;

	buf = FUNC8(&output_conv, name, NULL);
	if (buf != NULL)
	{
	    font = FUNC5((const char *)buf);
	    FUNC9(buf);
	}
	else
	    font = NULL;
    }
    else
	font = FUNC5((const char *)name);

    if (font != NULL)
    {
	PangoFont *real_font;

	/* pango_context_load_font() bails out if no font size is set */
	if (FUNC6(font) <= 0)
	    FUNC7(font, 10 * PANGO_SCALE);

	real_font = FUNC3(gui.text_context, font);

	if (real_font == NULL)
	{
	    FUNC4(font);
	    font = NULL;
	}
	else
	    FUNC2(real_font);
    }

    if (font == NULL)
    {
	if (report_error)
	    FUNC0(FUNC1((char *)e_font), name);
	return NULL;
    }

    return font;
}