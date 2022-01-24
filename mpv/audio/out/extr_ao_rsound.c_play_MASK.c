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
struct priv {int /*<<< orphan*/  rd; } ;
struct ao {int sstride; struct priv* priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC1(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *priv = ao->priv;
    return FUNC0(priv->rd, data[0], samples * ao->sstride) / ao->sstride;
}