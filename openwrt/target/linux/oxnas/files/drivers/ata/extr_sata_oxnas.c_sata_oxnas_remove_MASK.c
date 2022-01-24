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
struct sata_oxnas_host_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst_phy; int /*<<< orphan*/  rst_link; int /*<<< orphan*/  rst_sata; int /*<<< orphan*/  core_base; int /*<<< orphan*/  sgdma_base; int /*<<< orphan*/  port_base; int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ata_host {struct sata_oxnas_host_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ata_host* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *ofdev)
{
	struct ata_host *host = FUNC3(&ofdev->dev);
	struct sata_oxnas_host_priv *host_priv = host->private_data;

	FUNC0(host);

	FUNC5(host_priv->irq);
	FUNC4(host_priv->port_base);
	FUNC4(host_priv->sgdma_base);
	FUNC4(host_priv->core_base);

	/* reset Controller, Link and PHY */
	FUNC6(host_priv->rst_sata);
	FUNC6(host_priv->rst_link);
	FUNC6(host_priv->rst_phy);

	/* Disable the clock to the SATA block */
	FUNC1(host_priv->clk);
	FUNC2(host_priv->clk);

	return 0;
}