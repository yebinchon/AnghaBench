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
struct ra_native_resource {char const* name; void* data; } ;
struct ra {int /*<<< orphan*/  num_native_resources; int /*<<< orphan*/  native_resources; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ra_native_resource) ; 

void FUNC1(struct ra *ra, const char *name, void *data)
{
    struct ra_native_resource r = {
        .name = name,
        .data = data,
    };
    FUNC0(ra, ra->native_resources, ra->num_native_resources, r);
}