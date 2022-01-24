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
struct priv {scalar_t__ cfg_latency_hacks; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 double FUNC0 (struct ao*) ; 
 double FUNC1 (struct ao*) ; 

__attribute__((used)) static double FUNC2(struct ao *ao)
{
    struct priv *priv = ao->priv;
    if (priv->cfg_latency_hacks) {
        return FUNC0(ao);
    } else {
        return FUNC1(ao);
    }
}