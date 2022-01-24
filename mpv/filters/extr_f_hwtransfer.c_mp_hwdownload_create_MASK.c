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
struct mp_hwdownload {int /*<<< orphan*/  pool; struct mp_filter* f; } ;
struct mp_filter {struct mp_hwdownload* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  hwdownload_filter ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC1 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_hwdownload*) ; 

struct mp_hwdownload *FUNC3(struct mp_filter *parent)
{
    struct mp_filter *f = FUNC1(parent, &hwdownload_filter);
    if (!f)
        return NULL;

    struct mp_hwdownload *d = f->priv;

    d->f = f;
    d->pool = FUNC2(d);

    FUNC0(f, MP_PIN_IN, "in");
    FUNC0(f, MP_PIN_OUT, "out");

    return d;
}