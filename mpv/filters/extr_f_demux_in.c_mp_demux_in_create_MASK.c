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
struct sh_stream {int dummy; } ;
struct priv {struct sh_stream* src; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  demux_filter ; 
 int /*<<< orphan*/  FUNC0 (struct sh_stream*,int /*<<< orphan*/ ,struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC2 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wakeup ; 

struct mp_filter *FUNC3(struct mp_filter *parent,
                                     struct sh_stream *src)
{
    struct mp_filter *f = FUNC2(parent, &demux_filter);
    if (!f)
        return NULL;

    struct priv *p = f->priv;
    p->src = src;

    FUNC1(f, MP_PIN_OUT, "out");

    FUNC0(p->src, wakeup, f);

    return f;
}