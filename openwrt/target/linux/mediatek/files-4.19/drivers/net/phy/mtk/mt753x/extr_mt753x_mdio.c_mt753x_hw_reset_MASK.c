#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct reset_control {int dummy; } ;
struct gsw_mt753x {int reset_pin; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (TYPE_1__*,int,char*) ; 
 struct reset_control* FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC11 (struct reset_control*) ; 

__attribute__((used)) static int FUNC12(struct gsw_mt753x *gsw)
{
	struct device_node *np = gsw->dev->of_node;
	struct reset_control *rstc;
	int mcm;
	int ret = -EINVAL;

	mcm = FUNC9(np, "mediatek,mcm");
	if (mcm) {
		rstc = FUNC4(gsw->dev, "mcm");
		ret = FUNC0(rstc);
		if (FUNC0(rstc)) {
			FUNC1(gsw->dev, "Missing reset ctrl of switch\n");
			return ret;
		}

		FUNC10(rstc);
		FUNC7(30);
		FUNC11(rstc);

		gsw->reset_pin = -1;
		return 0;
	}

	gsw->reset_pin = FUNC8(np, "reset-gpios", 0);
	if (gsw->reset_pin < 0) {
		FUNC1(gsw->dev, "Missing reset pin of switch\n");
		return ret;
	}

	ret = FUNC3(gsw->dev, gsw->reset_pin, "mt753x-reset");
	if (ret) {
		FUNC2(gsw->dev, "Failed to request gpio %d\n",
			 gsw->reset_pin);
		return ret;
	}

	FUNC5(gsw->reset_pin, 0);
	FUNC7(30);
	FUNC6(gsw->reset_pin, 1);
	FUNC7(500);

	return 0;
}