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
struct async_delay_data {int dummy; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct async_delay_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct async_delay_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data, obs_source_t *parent)
{
	struct async_delay_data *filter = data;

	FUNC1(filter, parent);
	FUNC0(filter);
}