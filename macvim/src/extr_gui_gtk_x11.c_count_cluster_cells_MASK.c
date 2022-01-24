#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_14__ {int num_glyphs; int* log_clusters; TYPE_4__* glyphs; } ;
struct TYPE_11__ {int /*<<< orphan*/  font; } ;
struct TYPE_13__ {int offset; int length; TYPE_3__ analysis; } ;
struct TYPE_10__ {int width; } ;
struct TYPE_9__ {scalar_t__ is_cluster_start; } ;
struct TYPE_12__ {int /*<<< orphan*/  glyph; TYPE_2__ geometry; TYPE_1__ attr; } ;
typedef  int /*<<< orphan*/  PangoRectangle ;
typedef  TYPE_5__ PangoItem ;
typedef  TYPE_6__ PangoGlyphString ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(char_u *s, PangoItem *item,
		    PangoGlyphString* glyphs, int i,
		    int *cluster_width,
		    int *last_glyph_rbearing)
{
    char_u  *p;
    int	    next;	/* glyph start index of next cluster */
    int	    start, end; /* string segment of current cluster */
    int	    width;	/* real cluster width in Pango units */
    int	    uc;
    int	    cellcount = 0;

    width = glyphs->glyphs[i].geometry.width;

    for (next = i + 1; next < glyphs->num_glyphs; ++next)
    {
	if (glyphs->glyphs[next].attr.is_cluster_start)
	    break;
	else if (glyphs->glyphs[next].geometry.width > width)
	    width = glyphs->glyphs[next].geometry.width;
    }

    start = item->offset + glyphs->log_clusters[i];
    end   = item->offset + ((next < glyphs->num_glyphs) ?
			    glyphs->log_clusters[next] : item->length);

    for (p = s + start; p < s + end; p += FUNC2(*p))
    {
	uc = FUNC5(p);
	if (uc < 0x80)
	    ++cellcount;
	else if (!FUNC4(uc))
	    cellcount += FUNC3(uc);
    }

    if (last_glyph_rbearing != NULL
	    && cellcount > 0 && next == glyphs->num_glyphs)
    {
	PangoRectangle ink_rect;
	/*
	 * If a certain combining mark had to be taken from a non-monospace
	 * font, we have to compensate manually by adapting x_offset according
	 * to the ink extents of the previous glyph.
	 */
	FUNC1(item->analysis.font,
				     glyphs->glyphs[i].glyph,
				     &ink_rect, NULL);

	if (FUNC0(ink_rect) > 0)
	    *last_glyph_rbearing = FUNC0(ink_rect);
    }

    if (cellcount > 0)
	*cluster_width = width;

    return cellcount;
}