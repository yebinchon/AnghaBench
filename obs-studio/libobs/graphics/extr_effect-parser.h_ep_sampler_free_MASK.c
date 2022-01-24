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
struct ep_sampler {TYPE_1__ values; TYPE_1__ states; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 

__attribute__((used)) static inline void FUNC2(struct ep_sampler *eps)
{
	size_t i;

	for (i = 0; i < eps->states.num; i++)
		FUNC0(eps->states.array[i]);
	for (i = 0; i < eps->values.num; i++)
		FUNC0(eps->values.array[i]);

	FUNC0(eps->name);
	FUNC1(eps->states);
	FUNC1(eps->values);
}