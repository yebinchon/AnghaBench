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
struct TYPE_2__ {int selmode; } ;

/* Variables and functions */
 TYPE_1__ cfg ; 
 scalar_t__ nselected ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ selbufpos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (!cfg.selmode) {
		cfg.selmode = 1;
		nselected = 0;

		if (selbufpos) {
			FUNC0();
			FUNC1(NULL, 0);
			selbufpos = 0;
		}
	}
}