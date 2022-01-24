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
struct os_inhibit_info {int dummy; } ;
typedef  int /*<<< orphan*/  os_inhibit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

os_inhibit_t *FUNC2(const char *reason)
{
	FUNC0(reason);
	return FUNC1(sizeof(struct os_inhibit_info));
}