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
struct TYPE_2__ {scalar_t__ selmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_NOTRACE ; 
 TYPE_1__ cfg ; 
 int /*<<< orphan*/  copier ; 
 int /*<<< orphan*/  pselbuf ; 
 scalar_t__ selbufpos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (cfg.selmode) {
		cfg.selmode = 0;

		if (selbufpos) { /* File path(s) written to the buffer */
			FUNC1(pselbuf, selbufpos - 1); /* Truncate NULL from end */
			FUNC0(copier, NULL, NULL, NULL, F_NOTRACE);
		}
	}
}