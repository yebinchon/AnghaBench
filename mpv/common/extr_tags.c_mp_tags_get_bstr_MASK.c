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
struct mp_tags {int num_keys; char** values; int /*<<< orphan*/ * keys; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *FUNC1(struct mp_tags *tags, bstr key)
{
    for (int n = 0; n < tags->num_keys; n++) {
        if (FUNC0(key, tags->keys[n]) == 0)
            return tags->values[n];
    }
    return NULL;
}