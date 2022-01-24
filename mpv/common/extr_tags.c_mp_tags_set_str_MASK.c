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
struct mp_tags {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_tags*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mp_tags *tags, const char *key, const char *value)
{
    FUNC1(tags, FUNC0(key), FUNC0(value));
}