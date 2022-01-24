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
struct frame_rate_data {int /*<<< orphan*/  ranges; int /*<<< orphan*/  extra_options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_rate_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_rate_data*) ; 

__attribute__((used)) static inline void FUNC3(struct frame_rate_data *data)
{
	FUNC1(data);
	FUNC2(data);

	FUNC0(data->extra_options);
	FUNC0(data->ranges);
}