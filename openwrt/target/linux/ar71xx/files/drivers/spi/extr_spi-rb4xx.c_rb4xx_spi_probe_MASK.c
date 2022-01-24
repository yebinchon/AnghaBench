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
struct spi_master {int num_chipselect; int /*<<< orphan*/  transfer; int /*<<< orphan*/  setup; int /*<<< orphan*/  mode_bits; scalar_t__ bus_num; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct rb4xx_spi {int cs_wait; int /*<<< orphan*/  ahb_clk; int /*<<< orphan*/  base; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; void* spi_ctrl_fread; void* spi_ctrl_flash; struct spi_master* master; int /*<<< orphan*/  ahb_freq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_CPLD_HZ ; 
 int /*<<< orphan*/  SPI_FLASH_HZ ; 
 int /*<<< orphan*/  SPI_TX_DUAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC9 (struct rb4xx_spi*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct rb4xx_spi*) ; 
 int /*<<< orphan*/  rb4xx_spi_setup ; 
 int /*<<< orphan*/  rb4xx_spi_transfer ; 
 struct spi_master* FUNC14 (int /*<<< orphan*/ *,int) ; 
 struct rb4xx_spi* FUNC15 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_master*) ; 
 int FUNC17 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct spi_master *master;
	struct rb4xx_spi *rbspi;
	struct resource *r;
	int err = 0;

	master = FUNC14(&pdev->dev, sizeof(*rbspi));
	if (master == NULL) {
		FUNC8(&pdev->dev, "no memory for spi_master\n");
		err = -ENOMEM;
		goto err_out;
	}

	master->bus_num = 0;
	master->num_chipselect = 3;
	master->mode_bits = SPI_TX_DUAL;
	master->setup = rb4xx_spi_setup;
	master->transfer = rb4xx_spi_transfer;

	rbspi = FUNC15(master);

	rbspi->ahb_clk = FUNC4(&pdev->dev, "ahb");
	if (FUNC1(rbspi->ahb_clk)) {
		err = FUNC2(rbspi->ahb_clk);
		goto err_put_master;
	}

	err = FUNC6(rbspi->ahb_clk);
	if (err)
		goto err_clk_put;

	rbspi->ahb_freq = FUNC5(rbspi->ahb_clk);
	if (!rbspi->ahb_freq) {
		err = -EINVAL;
		goto err_clk_disable;
	}

	FUNC13(pdev, rbspi);

	r = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (r == NULL) {
		err = -ENOENT;
		goto err_clk_disable;
	}

	rbspi->base = FUNC10(r->start, r->end - r->start + 1);
	if (!rbspi->base) {
		err = -ENXIO;
		goto err_clk_disable;
	}

	rbspi->master = master;
	rbspi->spi_ctrl_flash = FUNC9(rbspi, SPI_FLASH_HZ, "FLASH");
	rbspi->spi_ctrl_fread = FUNC9(rbspi, SPI_CPLD_HZ, "CPLD");
	rbspi->cs_wait = -1;

	FUNC18(&rbspi->lock);
	FUNC0(&rbspi->queue);

	err = FUNC17(master);
	if (err) {
		FUNC8(&pdev->dev, "failed to register SPI master\n");
		goto err_iounmap;
	}

	return 0;

err_iounmap:
	FUNC11(rbspi->base);
err_clk_disable:
	FUNC3(rbspi->ahb_clk);
err_clk_put:
	FUNC7(rbspi->ahb_clk);
err_put_master:
	FUNC13(pdev, NULL);
	FUNC16(master);
err_out:
	return err;
}