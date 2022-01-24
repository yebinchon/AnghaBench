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
struct mp_hwupload {struct mp_filter* f; } ;
struct priv {struct mp_hwupload public; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  hwupload_filter ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC2 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_hwupload*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*) ; 

struct mp_hwupload *FUNC5(struct mp_filter *parent, int hw_imgfmt)
{
    struct mp_filter *f = FUNC2(parent, &hwupload_filter);
    if (!f)
        return NULL;

    struct priv *p = f->priv;
    struct mp_hwupload *u = &p->public;
    u->f = f;

    FUNC1(f, MP_PIN_IN, "in");
    FUNC1(f, MP_PIN_OUT, "out");

    if (!FUNC3(u, hw_imgfmt)) {
        FUNC0(f, "hardware format not supported\n");
        goto error;
    }

    return u;
error:
    FUNC4(f);
    return NULL;
}