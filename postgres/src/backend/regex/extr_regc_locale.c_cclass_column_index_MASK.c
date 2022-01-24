#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct colormap {int* classbits; } ;
typedef  scalar_t__ chr ;

/* Variables and functions */
 size_t CC_ALNUM ; 
 size_t CC_ALPHA ; 
 size_t CC_ASCII ; 
 size_t CC_BLANK ; 
 size_t CC_CNTRL ; 
 size_t CC_DIGIT ; 
 size_t CC_GRAPH ; 
 size_t CC_LOWER ; 
 size_t CC_PRINT ; 
 size_t CC_PUNCT ; 
 size_t CC_SPACE ; 
 size_t CC_UPPER ; 
 size_t CC_XDIGIT ; 
 scalar_t__ MAX_SIMPLE_CHR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static int
FUNC10(struct colormap *cm, chr c)
{
	int			colnum = 0;

	/* Shouldn't go through all these pushups for simple chrs */
	FUNC0(c > MAX_SIMPLE_CHR);

	/*
	 * Note: we should not see requests to consider cclasses that are not
	 * treated as locale-specific by cclass(), above.
	 */
	if (cm->classbits[CC_PRINT] && FUNC6(c))
		colnum |= cm->classbits[CC_PRINT];
	if (cm->classbits[CC_ALNUM] && FUNC1(c))
		colnum |= cm->classbits[CC_ALNUM];
	if (cm->classbits[CC_ALPHA] && FUNC2(c))
		colnum |= cm->classbits[CC_ALPHA];
	FUNC0(cm->classbits[CC_ASCII] == 0);
	FUNC0(cm->classbits[CC_BLANK] == 0);
	FUNC0(cm->classbits[CC_CNTRL] == 0);
	if (cm->classbits[CC_DIGIT] && FUNC3(c))
		colnum |= cm->classbits[CC_DIGIT];
	if (cm->classbits[CC_PUNCT] && FUNC7(c))
		colnum |= cm->classbits[CC_PUNCT];
	FUNC0(cm->classbits[CC_XDIGIT] == 0);
	if (cm->classbits[CC_SPACE] && FUNC8(c))
		colnum |= cm->classbits[CC_SPACE];
	if (cm->classbits[CC_LOWER] && FUNC5(c))
		colnum |= cm->classbits[CC_LOWER];
	if (cm->classbits[CC_UPPER] && FUNC9(c))
		colnum |= cm->classbits[CC_UPPER];
	if (cm->classbits[CC_GRAPH] && FUNC4(c))
		colnum |= cm->classbits[CC_GRAPH];

	return colnum;
}