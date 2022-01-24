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
typedef  int /*<<< orphan*/  tx_buf ;
typedef  int /*<<< orphan*/  t ;
struct spi_transfer {unsigned char* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct rb4xx_cpld {int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC4(struct rb4xx_cpld *cpld, unsigned char cmd)
{
	struct spi_transfer t[1];
	struct spi_message m;
	unsigned char tx_buf[1];
	int err;

	FUNC2(&m);
	FUNC0(&t, 0, sizeof(t));

	t[0].tx_buf = tx_buf;
	t[0].len = sizeof(tx_buf);
	FUNC1(&t[0], &m);

	tx_buf[0] = cmd;

	err = FUNC3(cpld->spi, &m);
	return err;
}