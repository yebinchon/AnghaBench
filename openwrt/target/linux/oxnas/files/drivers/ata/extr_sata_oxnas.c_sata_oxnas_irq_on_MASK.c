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
typedef  int u32 ;
struct sata_oxnas_port_priv {scalar_t__ core_base; scalar_t__ port_base; } ;
struct ata_port {int port_no; struct sata_oxnas_port_priv* private_data; } ;

/* Variables and functions */
 int COREINT_END ; 
 scalar_t__ CORE_INT_ENABLE ; 
 scalar_t__ CORE_INT_STATUS ; 
 scalar_t__ INT_CLEAR ; 
 scalar_t__ INT_ENABLE ; 
 int INT_WANT ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap)
{
	struct sata_oxnas_port_priv *pd = ap->private_data;
	u32 mask = (COREINT_END << ap->port_no);

	/* Clear pending interrupts */
	FUNC0(~0, pd->port_base + INT_CLEAR);
	FUNC0(mask, pd->core_base + CORE_INT_STATUS);
	FUNC1();

	/* enable End of command interrupt */
	FUNC0(INT_WANT, pd->port_base + INT_ENABLE);
	FUNC0(mask, pd->core_base + CORE_INT_ENABLE);
}