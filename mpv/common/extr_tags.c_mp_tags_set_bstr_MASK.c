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
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_tags*,void**,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (struct mp_tags*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void FUNC4(struct mp_tags *tags, bstr key, bstr value)
{
    for (int n = 0; n < tags->num_keys; n++) {
        if (FUNC1(key, tags->keys[n]) == 0) {
            FUNC3(tags->values[n]);
            tags->values[n] = FUNC2(tags, value);
            return;
        }
    }

    FUNC0(tags, tags->keys,   tags->num_keys + 1);
    FUNC0(tags, tags->values, tags->num_keys + 1);
    tags->keys[tags->num_keys]   = FUNC2(tags, key);
    tags->values[tags->num_keys] = FUNC2(tags, value);
    tags->num_keys++;
}