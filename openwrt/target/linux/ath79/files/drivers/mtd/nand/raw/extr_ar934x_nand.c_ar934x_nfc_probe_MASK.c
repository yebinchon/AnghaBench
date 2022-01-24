#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  mode; } ;
struct nand_chip {int chip_delay; TYPE_3__ dummy_controller; TYPE_2__ ecc; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  cmd_ctrl; int /*<<< orphan*/  cmdfunc; int /*<<< orphan*/  dev_ready; } ;
struct TYPE_9__ {TYPE_4__* parent; } ;
struct mtd_info {int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/  owner; } ;
struct ar934x_nfc {scalar_t__ irq; struct nand_chip nand_chip; int /*<<< orphan*/  swap_dma; TYPE_4__* parent; int /*<<< orphan*/  rst; int /*<<< orphan*/  irq_waitq; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR934X_NFC_DRIVER_NAME ; 
 int /*<<< orphan*/  AR934X_NFC_ID_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAND_ECC_HW ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (struct ar934x_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar934x_nfc_cmd_ctrl ; 
 int /*<<< orphan*/  ar934x_nfc_cmdfunc ; 
 int /*<<< orphan*/  ar934x_nfc_controller_ops ; 
 int /*<<< orphan*/  ar934x_nfc_dev_ready ; 
 int /*<<< orphan*/  ar934x_nfc_dma_mask ; 
 int /*<<< orphan*/  FUNC4 (struct ar934x_nfc*) ; 
 int FUNC5 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  ar934x_nfc_irq_handler ; 
 int /*<<< orphan*/  ar934x_nfc_read_buf ; 
 int /*<<< orphan*/  ar934x_nfc_read_byte ; 
 int /*<<< orphan*/  ar934x_nfc_write_buf ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct resource*) ; 
 struct ar934x_nfc* FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct nand_chip*,struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC15 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC16 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct ar934x_nfc*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct ar934x_nfc *nfc;
	struct resource *res;
	struct mtd_info *mtd;
	struct nand_chip *nand;
	int ret;

	pdev->dev.dma_mask = &ar934x_nfc_dma_mask;
	pdev->dev.coherent_dma_mask = FUNC0(32);

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC6(&pdev->dev, "failed to get I/O memory\n");
		return -EINVAL;
	}

	nfc = FUNC8(&pdev->dev, sizeof(struct ar934x_nfc), GFP_KERNEL);
	if (!nfc) {
		FUNC6(&pdev->dev, "failed to allocate driver data\n");
		return -ENOMEM;
	}

	nfc->base = FUNC7(&pdev->dev, res);
	if (FUNC1(nfc->base)) {
		FUNC6(&pdev->dev, "failed to remap I/O memory\n");
		return FUNC2(nfc->base);
	}

	nfc->irq = FUNC18(pdev, 0);
	if (nfc->irq < 0) {
		FUNC6(&pdev->dev, "no IRQ resource specified\n");
		return -EINVAL;
	}

	FUNC11(&nfc->irq_waitq);
	ret = FUNC9(&pdev->dev, nfc->irq, ar934x_nfc_irq_handler,
			       0, AR934X_NFC_DRIVER_NAME, nfc);
	if (ret) {
		FUNC6(&pdev->dev, "devm_request_irq failed, err:%d\n", ret);
		return ret;
	}

	nfc->rst = FUNC10(&pdev->dev, "nand");
	if (FUNC1(nfc->rst)) {
		FUNC6(&pdev->dev, "Failed to get reset\n");
		return FUNC2(nfc->rst);
	}

	nfc->parent = &pdev->dev;
	nfc->swap_dma = FUNC17(pdev->dev.of_node,
					      "qca,nand-swap-dma");

	nand = &nfc->nand_chip;
	mtd = FUNC16(nand);

	mtd->owner = THIS_MODULE;
	mtd->dev.parent = &pdev->dev;
	mtd->name = AR934X_NFC_DRIVER_NAME;

	FUNC14(nand, nfc);
	FUNC15(nand, pdev->dev.of_node);
	nand->chip_delay = 25;
	nand->dev_ready = ar934x_nfc_dev_ready;
	nand->cmdfunc = ar934x_nfc_cmdfunc;
	nand->cmd_ctrl = ar934x_nfc_cmd_ctrl;	/* dummy */
	nand->read_byte = ar934x_nfc_read_byte;
	nand->write_buf = ar934x_nfc_write_buf;
	nand->read_buf = ar934x_nfc_read_buf;
	nand->ecc.mode = NAND_ECC_HW;	/* default */
	FUNC20(pdev, nfc);

	ret = FUNC3(nfc, AR934X_NFC_ID_BUF_SIZE);
	if (ret)
		return ret;

	ret = FUNC5(nfc);
	if (ret) {
		FUNC6(&pdev->dev, "hardware init failed, err:%d\n", ret);
		goto err_free_buf;
	}

	nand->dummy_controller.ops = &ar934x_nfc_controller_ops;
	ret = FUNC13(mtd, 1);
	if (ret) {
		FUNC6(&pdev->dev, "nand_scan failed, err:%d\n", ret);
		goto err_free_buf;
	}

	ret = FUNC12(mtd, NULL, 0);
	if (ret) {
		FUNC6(&pdev->dev, "unable to register mtd, err:%d\n", ret);
		goto err_free_buf;
	}

	return 0;

err_free_buf:
	FUNC4(nfc);
	return ret;
}