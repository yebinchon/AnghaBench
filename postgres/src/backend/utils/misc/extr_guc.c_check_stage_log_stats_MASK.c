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
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ log_statement_stats ; 

__attribute__((used)) static bool
FUNC1(bool *newval, void **extra, GucSource source)
{
	if (*newval && log_statement_stats)
	{
		FUNC0("Cannot enable parameter when \"log_statement_stats\" is true.");
		return false;
	}
	return true;
}