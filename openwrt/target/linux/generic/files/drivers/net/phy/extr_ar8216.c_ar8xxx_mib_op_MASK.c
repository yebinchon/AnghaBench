#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ar8xxx_priv {int /*<<< orphan*/  mib_lock; TYPE_1__* chip; } ;
struct TYPE_2__ {unsigned int mib_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8216_MIB_BUSY ; 
 int /*<<< orphan*/  AR8216_MIB_FUNC ; 
 int AR8216_MIB_FUNC_S ; 
 int FUNC0 (struct ar8xxx_priv*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ar8xxx_priv *priv, u32 op)
{
	unsigned mib_func = priv->chip->mib_func;
	int ret;

	FUNC2(&priv->mib_lock);

	/* Capture the hardware statistics for all ports */
	FUNC1(priv, mib_func, AR8216_MIB_FUNC, (op << AR8216_MIB_FUNC_S));

	/* Wait for the capturing to complete. */
	ret = FUNC0(priv, mib_func, AR8216_MIB_BUSY, 0, 10);
	if (ret)
		goto out;

	ret = 0;

out:
	return ret;
}