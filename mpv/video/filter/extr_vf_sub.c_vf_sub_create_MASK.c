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
struct priv {int /*<<< orphan*/  pool; int /*<<< orphan*/  opts; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC2 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct priv*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct priv*,void*) ; 
 int /*<<< orphan*/  vf_sub_filter ; 

__attribute__((used)) static struct mp_filter *FUNC6(struct mp_filter *parent, void *options)
{
    struct mp_filter *f = FUNC2(parent, &vf_sub_filter);
    if (!f) {
        FUNC4(options);
        return NULL;
    }

    FUNC0(f, "This filter is deprecated and will be removed (no replacement)\n");

    FUNC1(f, MP_PIN_IN, "in");
    FUNC1(f, MP_PIN_OUT, "out");

    struct priv *priv = f->priv;
    priv->opts = FUNC5(priv, options);
    priv->pool = FUNC3(priv);

    return f;
}