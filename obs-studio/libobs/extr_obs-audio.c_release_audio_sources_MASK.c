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
struct TYPE_2__ {size_t num; int /*<<< orphan*/ * array; } ;
struct obs_core_audio {TYPE_1__ render_order; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct obs_core_audio *audio)
{
	for (size_t i = 0; i < audio->render_order.num; i++)
		FUNC0(audio->render_order.array[i]);
}