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
struct mdio_device {int /*<<< orphan*/  dev; } ;
struct ar8xxx_priv {scalar_t__ use_count; scalar_t__ sw_mii_bus; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ar8xxx_dev_list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*) ; 
 struct ar8xxx_priv* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct mdio_device *mdiodev)
{
	struct ar8xxx_priv *priv = FUNC3(&mdiodev->dev);

	if (FUNC0(!priv))
		return;

	FUNC6(&ar8xxx_dev_list_lock);

	if (--priv->use_count > 0) {
		FUNC7(&ar8xxx_dev_list_lock);
		return;
	}

	FUNC4(&priv->list);
	FUNC7(&ar8xxx_dev_list_lock);

	FUNC8(&priv->dev);
	FUNC2(priv);
	if(priv->sw_mii_bus)
		FUNC5(priv->sw_mii_bus);
	FUNC1(priv);
}