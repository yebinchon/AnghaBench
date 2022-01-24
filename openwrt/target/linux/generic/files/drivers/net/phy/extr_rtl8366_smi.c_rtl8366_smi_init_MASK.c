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
struct rtl8366_smi {int /*<<< orphan*/  parent; TYPE_2__* ops; TYPE_1__* ext_mbus; int /*<<< orphan*/  gpio_sck; int /*<<< orphan*/  gpio_sda; } ;
struct TYPE_4__ {int (* detect ) (struct rtl8366_smi*) ;int (* setup ) (struct rtl8366_smi*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*) ; 
 int FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8366_smi*) ; 
 int FUNC6 (struct rtl8366_smi*,int) ; 
 int FUNC7 (struct rtl8366_smi*) ; 
 int FUNC8 (struct rtl8366_smi*) ; 
 int FUNC9 (struct rtl8366_smi*) ; 
 int FUNC10 (struct rtl8366_smi*) ; 
 int FUNC11 (struct rtl8366_smi*) ; 

int FUNC12(struct rtl8366_smi *smi)
{
	int err;

	if (!smi->ops)
		return -EINVAL;

	err = FUNC1(smi, FUNC4(smi->parent));
	if (err)
		goto err_out;

	if (!smi->ext_mbus)
		FUNC3(smi->parent, "using GPIO pins %u (SDA) and %u (SCK)\n",
			 smi->gpio_sda, smi->gpio_sck);
	else
		FUNC3(smi->parent, "using MDIO bus '%s'\n", smi->ext_mbus->name);

	err = smi->ops->detect(smi);
	if (err) {
		FUNC2(smi->parent, "chip detection failed, err=%d\n", err);
		goto err_free_sck;
	}

	err = FUNC8(smi);
	if (err)
		goto err_free_sck;

	err = smi->ops->setup(smi);
	if (err) {
		FUNC2(smi->parent, "chip setup failed, err=%d\n", err);
		goto err_free_sck;
	}

	err = FUNC7(smi);
	if (err) {
		FUNC2(smi->parent, "VLAN initialization failed, err=%d\n",
			err);
		goto err_free_sck;
	}

	err = FUNC6(smi, 1);
	if (err)
		goto err_free_sck;

	err = FUNC9(smi);
	if (err)
		goto err_free_sck;

	FUNC5(smi);

	return 0;

 err_free_sck:
	FUNC0(smi);
 err_out:
	return err;
}