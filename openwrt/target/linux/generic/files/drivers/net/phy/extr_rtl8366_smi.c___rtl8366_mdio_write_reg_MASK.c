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
struct rtl8366_smi {struct mii_bus* ext_mbus; } ;
struct mii_bus {int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  (* write ) (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDC_MDIO_ADDRESS_REG ; 
 int /*<<< orphan*/  MDC_MDIO_ADDR_OP ; 
 int /*<<< orphan*/  MDC_MDIO_CTRL0_REG ; 
 int /*<<< orphan*/  MDC_MDIO_CTRL1_REG ; 
 int /*<<< orphan*/  MDC_MDIO_DATA_WRITE_REG ; 
 int /*<<< orphan*/  MDC_MDIO_START_OP ; 
 int /*<<< orphan*/  MDC_MDIO_START_REG ; 
 int /*<<< orphan*/  MDC_MDIO_WRITE_OP ; 
 int /*<<< orphan*/  MDC_REALTEK_PHY_ADDR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct rtl8366_smi *smi, u32 addr, u32 data)
{
	u32 phy_id = MDC_REALTEK_PHY_ADDR;
	struct mii_bus *mbus = smi->ext_mbus;

	FUNC0(FUNC1());

	FUNC2(&mbus->mdio_lock);

	/* Write Start command to register 29 */
	mbus->write(mbus, phy_id, MDC_MDIO_START_REG, MDC_MDIO_START_OP);

	/* Write address control code to register 31 */
	mbus->write(mbus, phy_id, MDC_MDIO_CTRL0_REG, MDC_MDIO_ADDR_OP);

	/* Write Start command to register 29 */
	mbus->write(mbus, phy_id, MDC_MDIO_START_REG, MDC_MDIO_START_OP);

	/* Write address to register 23 */
	mbus->write(mbus, phy_id, MDC_MDIO_ADDRESS_REG, addr);

	/* Write Start command to register 29 */
	mbus->write(mbus, phy_id, MDC_MDIO_START_REG, MDC_MDIO_START_OP);

	/* Write data to register 24 */
	mbus->write(mbus, phy_id, MDC_MDIO_DATA_WRITE_REG, data);

	/* Write Start command to register 29 */
	mbus->write(mbus, phy_id, MDC_MDIO_START_REG, MDC_MDIO_START_OP);

	/* Write data control code to register 21 */
	mbus->write(mbus, phy_id, MDC_MDIO_CTRL1_REG, MDC_MDIO_WRITE_OP);

	FUNC3(&mbus->mdio_lock);
	return 0;
}