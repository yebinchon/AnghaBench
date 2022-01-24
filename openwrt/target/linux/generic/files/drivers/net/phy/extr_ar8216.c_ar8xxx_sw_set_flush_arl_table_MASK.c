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
struct switch_val {int dummy; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int /*<<< orphan*/  reg_mutex; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* atu_flush ) (struct ar8xxx_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ar8xxx_priv*) ; 
 struct ar8xxx_priv* FUNC3 (struct switch_dev*) ; 

int
FUNC4(struct switch_dev *dev,
			      const struct switch_attr *attr,
			      struct switch_val *val)
{
	struct ar8xxx_priv *priv = FUNC3(dev);
	int ret;

	FUNC0(&priv->reg_mutex);
	ret = priv->chip->atu_flush(priv);
	FUNC1(&priv->reg_mutex);

	return ret;
}