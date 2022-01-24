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
struct mp_tags {int num_keys; int /*<<< orphan*/ * values; int /*<<< orphan*/ * keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_tags*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct mp_tags *tags, struct mp_tags *src)
{
    for (int n = 0; n < src->num_keys; n++)
        FUNC0(tags, src->keys[n], src->values[n]);
}