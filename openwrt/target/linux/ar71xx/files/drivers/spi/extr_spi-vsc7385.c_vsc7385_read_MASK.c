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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  t ;
struct vsc7385 {int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; } ;
struct spi_transfer {int len; scalar_t__* rx_buf; scalar_t__* tx_buf; } ;
struct spi_message {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VSC73XX_CMD_MODE_READ ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct vsc7385 *vsc, u8 block, u8 subblock, u8 reg,
			u32 *value)
{
	u8 cmd[4];
	u8 buf[4];
	struct spi_transfer t[2];
	struct spi_message m;
	int err;

	if (!FUNC6(block, subblock))
		return -EINVAL;

	FUNC4(&m);

	FUNC0(&t, 0, sizeof(t));

	t[0].tx_buf = cmd;
	t[0].len = sizeof(cmd);
	FUNC3(&t[0], &m);

	t[1].rx_buf = buf;
	t[1].len = sizeof(buf);
	FUNC3(&t[1], &m);

	cmd[0] = FUNC7(VSC73XX_CMD_MODE_READ, block, subblock);
	cmd[1] = reg;
	cmd[2] = 0;
	cmd[3] = 0;

	FUNC1(&vsc->lock);
	err = FUNC5(vsc->spi, &m);
	FUNC2(&vsc->lock);

	if (err)
		return err;

	*value = (((u32) buf[0]) << 24) | (((u32) buf[1]) << 16) |
		 (((u32) buf[2]) << 8) | ((u32) buf[3]);

	return 0;
}