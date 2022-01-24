#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct timex {TYPE_1__ time; int /*<<< orphan*/  modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADJ_SETOFFSET ; 
 scalar_t__ FUNC0 (struct timex*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct timex txc;

	txc.modes = ADJ_SETOFFSET;
	txc.time.tv_sec = 0;
	txc.time.tv_usec = 0;

	if (FUNC0(&txc) < 0) {
		FUNC2("[FAIL] adjtimex");
		FUNC1();
	}
}