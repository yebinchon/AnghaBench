#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  len ;
struct TYPE_3__ {int /*<<< orphan*/  tapeset; } ;
typedef  TYPE_1__ Tuplesortstate ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static unsigned int
FUNC2(Tuplesortstate *state, int tapenum, bool eofOK)
{
	unsigned int len;

	if (FUNC0(state->tapeset, tapenum,
						&len, sizeof(len)) != sizeof(len))
		FUNC1(ERROR, "unexpected end of tape");
	if (len == 0 && !eofOK)
		FUNC1(ERROR, "unexpected end of data");
	return len;
}