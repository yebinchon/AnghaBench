#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int ports; } ;
struct ar8xxx_priv {int* mib_stats; scalar_t__ mib_type; TYPE_2__* chip; int /*<<< orphan*/  mib_lock; TYPE_1__ dev; } ;
struct ar8xxx_mib_desc {scalar_t__ type; int size; scalar_t__ offset; } ;
struct TYPE_4__ {int reg_port_stats_start; int reg_port_stats_length; int num_mibs; struct ar8xxx_mib_desc* mib_decs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ar8xxx_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ar8xxx_priv *priv, int port, bool flush)
{
	unsigned int base;
	u64 *mib_stats;
	int i;

	FUNC0(port >= priv->dev.ports);

	FUNC3(&priv->mib_lock);

	base = priv->chip->reg_port_stats_start +
	       priv->chip->reg_port_stats_length * port;

	mib_stats = &priv->mib_stats[port * priv->chip->num_mibs];
	for (i = 0; i < priv->chip->num_mibs; i++) {
		const struct ar8xxx_mib_desc *mib;
		u64 t;

		mib = &priv->chip->mib_decs[i];
		if (mib->type > priv->mib_type)
			continue;
		t = FUNC1(priv, base + mib->offset);
		if (mib->size == 2) {
			u64 hi;

			hi = FUNC1(priv, base + mib->offset + 4);
			t |= hi << 32;
		}

		if (flush)
			mib_stats[i] = 0;
		else
			mib_stats[i] += t;
		FUNC2();
	}
}