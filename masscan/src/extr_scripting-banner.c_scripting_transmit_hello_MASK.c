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
typedef  struct InteractiveData const InteractiveData ;
typedef  struct InteractiveData Banner1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct InteractiveData const*) ; 

__attribute__((used)) static void
FUNC2(const struct Banner1 *banner1, struct InteractiveData *more)
{
    FUNC1(banner1); FUNC1(more);
    FUNC0(0, "SCRIPTING: HELLO\n");
}