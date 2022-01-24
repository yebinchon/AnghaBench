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
struct mp_tags {int num_keys; void** values; void** keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_tags*,void**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_tags*) ; 
 void* FUNC2 (struct mp_tags*,void*) ; 

void FUNC3(struct mp_tags *dst, struct mp_tags *src)
{
    FUNC1(dst);
    FUNC0(dst, dst->keys,   src->num_keys);
    FUNC0(dst, dst->values, src->num_keys);
    dst->num_keys = src->num_keys;
    for (int n = 0; n < src->num_keys; n++) {
        dst->keys[n] = FUNC2(dst, src->keys[n]);
        dst->values[n] = FUNC2(dst, src->values[n]);
    }
}