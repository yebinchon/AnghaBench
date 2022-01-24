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
struct ar8xxx_priv {int /*<<< orphan*/  mib_work; int /*<<< orphan*/  mib_lock; int /*<<< orphan*/  reg_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar8xxx_mib_work_func ; 
 struct ar8xxx_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ar8xxx_priv *
FUNC3(void)
{
	struct ar8xxx_priv *priv;

	priv = FUNC1(sizeof(struct ar8xxx_priv), GFP_KERNEL);
	if (priv == NULL)
		return NULL;

	FUNC2(&priv->reg_mutex);
	FUNC2(&priv->mib_lock);
	FUNC0(&priv->mib_work, ar8xxx_mib_work_func);

	return priv;
}