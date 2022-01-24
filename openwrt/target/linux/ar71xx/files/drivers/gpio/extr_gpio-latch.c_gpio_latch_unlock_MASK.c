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
struct gpio_latch_chip {int latch_enabled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  latch_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct gpio_latch_chip *glc, bool disable)
{
	if (glc->latch_enabled)
		FUNC0(&glc->latch_mutex);

	if (disable)
		glc->latch_enabled = true;

	FUNC0(&glc->mutex);
}