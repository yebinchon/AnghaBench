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
struct phy_device {struct ar8xxx_priv* priv; } ;
struct ar8xxx_priv {scalar_t__ use_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ar8xxx_dev_list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct phy_device *phydev)
{
	struct ar8xxx_priv *priv = phydev->priv;

	if (FUNC0(!priv))
		return;

	phydev->priv = NULL;

	FUNC4(&ar8xxx_dev_list_lock);

	if (--priv->use_count > 0) {
		FUNC5(&ar8xxx_dev_list_lock);
		return;
	}

	FUNC3(&priv->list);
	FUNC5(&ar8xxx_dev_list_lock);

	FUNC6(&priv->dev);
	FUNC2(priv);
	FUNC1(priv);
}