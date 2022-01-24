#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct adm6996_gpio_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct adm6996_priv {int /*<<< orphan*/  eesk; int /*<<< orphan*/  eedi; int /*<<< orphan*/  eecs; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  model; int /*<<< orphan*/  mib_lock; int /*<<< orphan*/  reg_mutex; } ;
struct adm6996_gpio_platform_data {int /*<<< orphan*/  model; int /*<<< orphan*/  eesk; int /*<<< orphan*/  eedi; int /*<<< orphan*/  eecs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  adm6996_read_gpio_reg ; 
 int FUNC0 (struct adm6996_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adm6996_write_gpio_reg ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 struct adm6996_priv* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct adm6996_priv*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct adm6996_gpio_platform_data *pdata = pdev->dev.platform_data;
	struct adm6996_priv *priv;
	int ret;

	if (!pdata)
		return -EINVAL;

	priv = FUNC3(&pdev->dev, sizeof(struct adm6996_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC4(&priv->reg_mutex);
	FUNC4(&priv->mib_lock);

	priv->eecs = pdata->eecs;
	priv->eedi = pdata->eedi;
	priv->eesk = pdata->eesk;

	priv->model = pdata->model;
	priv->read = adm6996_read_gpio_reg;
	priv->write = adm6996_write_gpio_reg;

	ret = FUNC2(&pdev->dev, priv->eecs, "adm_eecs");
	if (ret)
		return ret;
	ret = FUNC2(&pdev->dev, priv->eedi, "adm_eedi");
	if (ret)
		return ret;
	ret = FUNC2(&pdev->dev, priv->eesk, "adm_eesk");
	if (ret)
		return ret;

	ret = FUNC0(priv, FUNC1(&pdev->dev), NULL);
	if (ret < 0)
		return ret;

	FUNC5(pdev, priv);

	return 0;
}