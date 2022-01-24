#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  alias; int /*<<< orphan*/ * ops; int /*<<< orphan*/  ports; void* cpu_port; int /*<<< orphan*/  vlans; } ;
struct mvsw61xx_state {int model; int cpu_port1; int registered; TYPE_1__ dev; void* cpu_port0; scalar_t__ is_indirect; void* base_addr; TYPE_2__* bus; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDENT ; 
 void* MV_BASE ; 
 int MV_IDENT_MASK ; 
 char* MV_IDENT_STR_6171 ; 
 char* MV_IDENT_STR_6172 ; 
 char* MV_IDENT_STR_6176 ; 
 char* MV_IDENT_STR_6352 ; 
#define  MV_IDENT_VALUE_6171 131 
#define  MV_IDENT_VALUE_6172 130 
#define  MV_IDENT_VALUE_6176 129 
#define  MV_IDENT_VALUE_6352 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MV_PORTS ; 
 int /*<<< orphan*/  MV_VLANS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvsw61xx_state*) ; 
 struct mvsw61xx_state* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvsw61xx_ops ; 
 TYPE_2__* FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct device_node*,char*) ; 
 scalar_t__ FUNC10 (struct device_node*,char*,void**) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct mvsw61xx_state*) ; 
 int FUNC12 (TYPE_2__*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct mvsw61xx_state *state;
	struct device_node *np = pdev->dev.of_node;
	struct device_node *mdio;
	char *model_str;
	u32 val;
	int err;

	state = FUNC6(sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	mdio = FUNC8(np, "mii-bus", 0);
	if (!mdio) {
		FUNC2(&pdev->dev, "Couldn't get MII bus handle\n");
		err = -ENODEV;
		goto out_err;
	}

	state->bus = FUNC7(mdio);
	if (!state->bus) {
		FUNC2(&pdev->dev, "Couldn't find MII bus from handle\n");
		err = -ENODEV;
		goto out_err;
	}

	state->is_indirect = FUNC9(np, "is-indirect");

	if (state->is_indirect) {
		if (FUNC10(np, "reg", &val)) {
			FUNC2(&pdev->dev, "Switch address not specified\n");
			err = -ENODEV;
			goto out_err;
		}

		state->base_addr = val;
	} else {
		state->base_addr = MV_BASE;
	}

	state->model = FUNC12(state->bus, state->is_indirect, state->base_addr,
				FUNC0(IDENT, 0)) & MV_IDENT_MASK;

	switch(state->model) {
	case MV_IDENT_VALUE_6171:
		model_str = MV_IDENT_STR_6171;
		break;
	case MV_IDENT_VALUE_6172:
		model_str = MV_IDENT_STR_6172;
		break;
	case MV_IDENT_VALUE_6176:
		model_str = MV_IDENT_STR_6176;
		break;
	case MV_IDENT_VALUE_6352:
		model_str = MV_IDENT_STR_6352;
		break;
	default:
		FUNC2(&pdev->dev, "No compatible switch found at 0x%02x\n",
				state->base_addr);
		err = -ENODEV;
		goto out_err;
	}

	FUNC11(pdev, state);
	FUNC3(&pdev->dev, "Found %s at %s:%02x\n", model_str,
			state->bus->id, state->base_addr);

	FUNC3(&pdev->dev, "Using %sdirect addressing\n",
			(state->is_indirect ? "in" : ""));

	if (FUNC10(np, "cpu-port-0", &val)) {
		FUNC2(&pdev->dev, "CPU port not set\n");
		err = -ENODEV;
		goto out_err;
	}

	state->cpu_port0 = val;

	if (!FUNC10(np, "cpu-port-1", &val))
		state->cpu_port1 = val;
	else
		state->cpu_port1 = -1;

	state->dev.vlans = MV_VLANS;
	state->dev.cpu_port = state->cpu_port0;
	state->dev.ports = MV_PORTS;
	state->dev.name = model_str;
	state->dev.ops = &mvsw61xx_ops;
	state->dev.alias = FUNC4(&pdev->dev);

	FUNC1(&state->dev, true);

	err = FUNC13(&state->dev, NULL);
	if (err < 0)
		goto out_err;

	state->registered = true;

	return 0;
out_err:
	FUNC5(state);
	return err;
}