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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int) ; 

void
FUNC3(StringInfo str, const Bitmapset *bms)
{
	int			x;

	FUNC1(str, '(');
	FUNC1(str, 'b');
	x = -1;
	while ((x = FUNC2(bms, x)) >= 0)
		FUNC0(str, " %d", x);
	FUNC1(str, ')');
}