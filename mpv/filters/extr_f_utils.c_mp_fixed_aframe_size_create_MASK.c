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
struct mp_filter {struct fixed_aframe_size_priv* priv; } ;
struct fixed_aframe_size_priv {int samples; int pad_silence; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  fixed_aframe_size_filter ; 
 int /*<<< orphan*/  FUNC0 (struct fixed_aframe_size_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC2 (struct mp_filter*,int /*<<< orphan*/ *) ; 

struct mp_filter *FUNC3(struct mp_filter *parent,
                                              int samples, bool pad_silence)
{
    if (samples < 1)
        return NULL;

    struct mp_filter *f = FUNC2(parent, &fixed_aframe_size_filter);
    if (!f)
        return NULL;

    FUNC1(f, MP_PIN_IN, "in");
    FUNC1(f, MP_PIN_OUT, "out");

    struct fixed_aframe_size_priv *p = f->priv;
    p->samples = samples;
    p->pad_silence = pad_silence;
    p->pool = FUNC0(p);

    return f;
}