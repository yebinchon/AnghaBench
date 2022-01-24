#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct input_handler {int dummy; } ;
struct input_device_id {int dummy; } ;
struct input_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  keybit; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; struct input_handler* handler; struct input_dev* dev; struct bh_priv* private; } ;
struct bh_priv {unsigned long* seen; TYPE_1__ handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_4__* button_map ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct bh_priv*) ; 
 struct bh_priv* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct input_handler *handler,
		struct input_dev *dev, const struct input_device_id *id)
{
	struct bh_priv *priv;
	int ret;
	int i;

	for (i = 0; i < FUNC0(button_map); i++)
		if (FUNC7(button_map[i].code, dev->keybit))
			break;

	if (i == FUNC0(button_map))
		return -ENODEV;

	priv = FUNC6(sizeof(*priv) +
		       (sizeof(unsigned long) * FUNC0(button_map)),
		       GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->seen = (unsigned long *) &priv[1];
	priv->handle.private = priv;
	priv->handle.dev = dev;
	priv->handle.handler = handler;
	priv->handle.name = DRV_NAME;

	ret = FUNC3(&priv->handle);
	if (ret)
		goto err_free_priv;

	ret = FUNC2(&priv->handle);
	if (ret)
		goto err_unregister_handle;

	FUNC1("connected to %s\n", dev->name);

	return 0;

 err_unregister_handle:
	FUNC4(&priv->handle);

 err_free_priv:
	FUNC5(priv);
	return ret;
}