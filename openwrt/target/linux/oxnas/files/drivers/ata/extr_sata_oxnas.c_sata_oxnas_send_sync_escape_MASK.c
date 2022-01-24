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
typedef  int /*<<< orphan*/  u32 ;
struct sata_oxnas_port_priv {scalar_t__ port_base; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC_ESCAPE ; 
 scalar_t__ SATA_COMMAND ; 
 int /*<<< orphan*/  SATA_OPCODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct ata_port*,int) ; 

__attribute__((used)) static inline void FUNC3(struct ata_port *ap)
{
	struct sata_oxnas_port_priv *pd = ap->private_data;
	u32 reg;

	/* read the SSTATUS register and only send a sync escape if there is a
	* link active */
	if ((FUNC2(ap, 0x20) & 3) == 3) {
		reg = FUNC0(pd->port_base + SATA_COMMAND);
		reg &= ~SATA_OPCODE_MASK;
		reg |= CMD_SYNC_ESCAPE;
		FUNC1(reg, pd->port_base + SATA_COMMAND);
	}
}