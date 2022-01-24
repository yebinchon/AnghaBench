#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct os_sem_data {int dummy; } ;
typedef  int /*<<< orphan*/  sem_t ;
struct TYPE_4__ {int /*<<< orphan*/  sem; } ;
typedef  TYPE_1__ os_sem_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC2(os_sem_t **sem, int value)
{
	sem_t new_sem;
	int ret = FUNC1(&new_sem, 0, value);
	if (ret != 0)
		return ret;

	*sem = FUNC0(sizeof(struct os_sem_data));
	(*sem)->sem = new_sem;
	return 0;
}