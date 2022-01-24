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
struct TYPE_7__ {int /*<<< orphan*/  len; scalar_t__ pos; } ;
typedef  TYPE_1__ WordEntry ;
struct TYPE_8__ {int size; } ;
typedef  TYPE_2__* TSVector ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__* const) ; 
 scalar_t__ FUNC1 (TYPE_2__* const) ; 
 int FUNC2 (char*,int,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(const TSVector tsv, char *lexeme, int lexeme_len)
{
	WordEntry  *arrin = FUNC0(tsv);
	int			StopLow = 0,
				StopHigh = tsv->size,
				StopMiddle,
				cmp;

	while (StopLow < StopHigh)
	{
		StopMiddle = (StopLow + StopHigh) / 2;

		cmp = FUNC2(lexeme, lexeme_len,
							  FUNC1(tsv) + arrin[StopMiddle].pos,
							  arrin[StopMiddle].len,
							  false);

		if (cmp < 0)
			StopHigh = StopMiddle;
		else if (cmp > 0)
			StopLow = StopMiddle + 1;
		else					/* found it */
			return StopMiddle;
	}

	return -1;
}