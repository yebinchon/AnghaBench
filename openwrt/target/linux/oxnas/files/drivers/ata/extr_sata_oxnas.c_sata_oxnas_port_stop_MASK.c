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
struct sata_oxnas_port_priv {int /*<<< orphan*/  sgdma_request_pa; int /*<<< orphan*/  sgdma_request; } ;
struct sata_oxnas_host_priv {scalar_t__ dma_size; } ;
struct device {int dummy; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_oxnas_host_priv* private_data; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SATA_OXNAS_DMA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sata_oxnas_port_priv*) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap)
{
	struct device *dev = ap->host->dev;
	struct sata_oxnas_port_priv *pp = ap->private_data;
	struct sata_oxnas_host_priv *host_priv = ap->host->private_data;

	FUNC0("ENTER\n");
	ap->private_data = NULL;
	if (host_priv->dma_size) {
		FUNC2(pp->sgdma_request);
	} else {
		FUNC1(dev, SATA_OXNAS_DMA_SIZE,
				  pp->sgdma_request, pp->sgdma_request_pa);
	}

	FUNC3(pp);
}