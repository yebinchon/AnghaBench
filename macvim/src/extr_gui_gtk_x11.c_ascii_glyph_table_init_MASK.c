#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  char char_u ;
typedef  int /*<<< orphan*/  ascii_chars ;
struct TYPE_19__ {int num_glyphs; TYPE_1__* glyphs; } ;
struct TYPE_18__ {int /*<<< orphan*/ * font; int /*<<< orphan*/  shape_engine; } ;
struct TYPE_17__ {scalar_t__ data; int /*<<< orphan*/ * next; } ;
struct TYPE_16__ {int x_offset; int width; } ;
struct TYPE_15__ {TYPE_5__ analysis; } ;
struct TYPE_14__ {TYPE_3__ geometry; } ;
struct TYPE_13__ {int char_width; TYPE_6__* ascii_glyphs; int /*<<< orphan*/ * ascii_font; int /*<<< orphan*/  text_context; } ;
typedef  TYPE_2__ PangoItem ;
typedef  TYPE_3__ PangoGlyphGeometry ;
typedef  int /*<<< orphan*/  PangoAttrList ;
typedef  TYPE_4__ GList ;
typedef  int /*<<< orphan*/  GFunc ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int PANGO_SCALE ; 
 int /*<<< orphan*/  default_shape_engine ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_10__ gui ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 TYPE_6__* FUNC9 () ; 
 int /*<<< orphan*/  pango_item_free ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int,TYPE_5__*,TYPE_6__*) ; 

__attribute__((used)) static void
FUNC12(void)
{
    char_u	    ascii_chars[128];
    PangoAttrList   *attr_list;
    GList	    *item_list;
    int		    i;

    if (gui.ascii_glyphs != NULL)
	FUNC8(gui.ascii_glyphs);
    if (gui.ascii_font != NULL)
	FUNC4(gui.ascii_font);

    gui.ascii_glyphs = NULL;
    gui.ascii_font   = NULL;

    /* For safety, fill in question marks for the control characters. */
    for (i = 0; i < 32; ++i)
	ascii_chars[i] = '?';
    for (; i < 127; ++i)
	ascii_chars[i] = i;
    ascii_chars[i] = '?';

    attr_list = FUNC6();
    item_list = FUNC10(gui.text_context, (const char *)ascii_chars,
			      0, sizeof(ascii_chars), attr_list, NULL);

    if (item_list != NULL && item_list->next == NULL) /* play safe */
    {
	PangoItem   *item;
	int	    width;

	item  = (PangoItem *)item_list->data;
	width = gui.char_width * PANGO_SCALE;

	/* Remember the shape engine used for ASCII. */
	default_shape_engine = item->analysis.shape_engine;

	gui.ascii_font = item->analysis.font;
	FUNC3(gui.ascii_font);

	gui.ascii_glyphs = FUNC9();

	FUNC11((const char *)ascii_chars, sizeof(ascii_chars),
		    &item->analysis, gui.ascii_glyphs);

	FUNC5(gui.ascii_glyphs->num_glyphs == sizeof(ascii_chars));

	for (i = 0; i < gui.ascii_glyphs->num_glyphs; ++i)
	{
	    PangoGlyphGeometry *geom;

	    geom = &gui.ascii_glyphs->glyphs[i].geometry;
	    geom->x_offset += FUNC0(0, width - geom->width) / 2;
	    geom->width = width;
	}
    }

    FUNC1(item_list, (GFunc)&pango_item_free, NULL);
    FUNC2(item_list);
    FUNC7(attr_list);
}