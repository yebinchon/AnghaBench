#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  style; } ;
struct TYPE_5__ {int font; int flags; int opcode; int mixmode; int length; int /*<<< orphan*/ * text; int /*<<< orphan*/  fgcolour; int /*<<< orphan*/  bgcolour; scalar_t__ boxtop; scalar_t__ boxbottom; scalar_t__ boxleft; scalar_t__ boxright; scalar_t__ cliptop; scalar_t__ clipbottom; scalar_t__ clipleft; scalar_t__ clipright; scalar_t__ y; scalar_t__ x; TYPE_2__ brush; } ;
typedef  TYPE_1__ TEXT2_ORDER ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;
typedef  int /*<<< orphan*/  BRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8(STREAM s, TEXT2_ORDER * os, uint32 present, RD_BOOL delta)
{
	int i;
	BRUSH brush;

	if (present & 0x000001)
		FUNC2(s, os->font);

	if (present & 0x000002)
		FUNC2(s, os->flags);

	if (present & 0x000004)
		FUNC2(s, os->opcode);

	if (present & 0x000008)
		FUNC2(s, os->mixmode);

	if (present & 0x000010)
		FUNC4(s, &os->fgcolour);

	if (present & 0x000020)
		FUNC4(s, &os->bgcolour);

	if (present & 0x000040)
		FUNC1(s, os->clipleft);

	if (present & 0x000080)
		FUNC1(s, os->cliptop);

	if (present & 0x000100)
		FUNC1(s, os->clipright);

	if (present & 0x000200)
		FUNC1(s, os->clipbottom);

	if (present & 0x000400)
		FUNC1(s, os->boxleft);

	if (present & 0x000800)
		FUNC1(s, os->boxtop);

	if (present & 0x001000)
		FUNC1(s, os->boxright);

	if (present & 0x002000)
		FUNC1(s, os->boxbottom);

	FUNC5(s, &os->brush, present >> 14);

	if (present & 0x080000)
		FUNC1(s, os->x);

	if (present & 0x100000)
		FUNC1(s, os->y);

	if (present & 0x200000)
	{
		FUNC2(s, os->length);
		FUNC3(s, os->text, os->length);
	}

	FUNC0(("TEXT2(x=%d,y=%d,cl=%d,ct=%d,cr=%d,cb=%d,bl=%d,bt=%d,br=%d,bb=%d,bs=%d,bg=0x%x,fg=0x%x,font=%d,fl=0x%x,op=0x%x,mix=%d,n=%d)\n", os->x, os->y, os->clipleft, os->cliptop, os->clipright, os->clipbottom, os->boxleft, os->boxtop, os->boxright, os->boxbottom, os->brush.style, os->bgcolour, os->fgcolour, os->font, os->flags, os->opcode, os->mixmode, os->length));

	FUNC0(("Text: "));

	for (i = 0; i < os->length; i++)
		FUNC0(("%02x ", os->text[i]));

	FUNC0(("\n"));

	FUNC6(&brush, &os->brush);

	FUNC7(os->font, os->flags, os->opcode - 1, os->mixmode, os->x, os->y,
		     os->clipleft, os->cliptop, os->clipright - os->clipleft,
		     os->clipbottom - os->cliptop, os->boxleft, os->boxtop,
		     os->boxright - os->boxleft, os->boxbottom - os->boxtop,
		     &brush, os->bgcolour, os->fgcolour, os->text, os->length);
}