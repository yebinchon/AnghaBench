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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vsc7385 {struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct vsc7385*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct vsc7385*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC3(struct vsc7385 *vsc, u8 block,
				       u8 subblock, u8 reg, u32 value,
				       u32 read_mask, u32 read_val)
{
	struct spi_device *spi = vsc->spi;
	u32 t;
	int err;

	err = FUNC2(vsc, block, subblock, reg, value);
	if (err)
		return err;

	err = FUNC1(vsc, block, subblock, reg, &t);
	if (err)
		return err;

	if ((t & read_mask) != read_val) {
		FUNC0(&spi->dev, "register write error\n");
		return -EIO;
	}

	return 0;
}