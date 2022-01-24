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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct owl_ctx {int /*<<< orphan*/  eeprom_load; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct owl_ctx*) ; 
 struct owl_ctx* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  owl_fw_cb ; 
 char* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct owl_ctx*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev,
		    const struct pci_device_id *id)
{
	struct owl_ctx *ctx;
	const char *eeprom_name;
	int err = 0;

	if (FUNC6(pdev))
		return -EIO;

	FUNC7(pdev);

	eeprom_name = FUNC4(pdev);
	if (!eeprom_name) {
		FUNC0(&pdev->dev, "no eeprom filename found.\n");
		return -ENODEV;
	}

	ctx = FUNC3(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		FUNC0(&pdev->dev, "failed to alloc device context.\n");
		return -ENOMEM;
	}
	FUNC1(&ctx->eeprom_load);

	FUNC5(pdev, ctx);
	err = FUNC8(THIS_MODULE, true, eeprom_name,
				      &pdev->dev, GFP_KERNEL, pdev, owl_fw_cb);
	if (err) {
		FUNC0(&pdev->dev, "failed to request caldata (%d).\n", err);
		FUNC2(ctx);
	}
	return err;
}