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
struct sata_oxnas_port_priv {int* port_base; } ;
struct ata_port {int /*<<< orphan*/  port_no; struct sata_oxnas_port_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int INT_REG_ACCESS_ERR ; 
 int INT_STATUS ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 

__attribute__((used)) static inline void FUNC3(struct ata_port *ap)
{
	struct sata_oxnas_port_priv *pd = ap->private_data;
	u32 *base = pd->port_base;
	u32 reg;

	reg = FUNC1(base + INT_STATUS);

	FUNC0("ENTER\n");
	if (reg & INT_REG_ACCESS_ERR) {
		FUNC0("clearing register access error on port %d\n",
			ap->port_no);
		FUNC2(INT_REG_ACCESS_ERR, base + INT_STATUS);
	}
	reg = FUNC1(base + INT_STATUS);
	if (reg & INT_REG_ACCESS_ERR)
		FUNC0("register access error didn't clear\n");
}