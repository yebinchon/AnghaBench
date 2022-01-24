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
struct sata_oxnas_port_priv {scalar_t__ sgdma_base; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; } ;

/* Variables and functions */
 scalar_t__ SGDMA_RESETS ; 
 int /*<<< orphan*/  SGDMA_RESETS_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct ata_port *ap)
{
	struct sata_oxnas_port_priv *pd = ap->private_data;

	FUNC0(SGDMA_RESETS_CTRL, pd->sgdma_base + SGDMA_RESETS);
}