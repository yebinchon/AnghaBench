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
struct spi_slave {int dummy; } ;
struct ar71xx_spi_slave {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar71xx_spi_slave*) ; 
 struct ar71xx_spi_slave* FUNC1 (struct spi_slave*) ; 

void FUNC2(struct spi_slave *slave)
{
	struct ar71xx_spi_slave *ss = FUNC1(slave);

	FUNC0(ss);
}