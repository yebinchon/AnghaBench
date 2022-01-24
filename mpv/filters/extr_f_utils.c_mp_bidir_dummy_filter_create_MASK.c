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
struct mp_filter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  bidir_dummy_filter ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC1 (struct mp_filter*,int /*<<< orphan*/ *) ; 

struct mp_filter *FUNC2(struct mp_filter *parent)
{
    struct mp_filter *f = FUNC1(parent, &bidir_dummy_filter);
    if (!f)
        return NULL;

    FUNC0(f, MP_PIN_IN, "in");
    FUNC0(f, MP_PIN_OUT, "out");

    return f;
}