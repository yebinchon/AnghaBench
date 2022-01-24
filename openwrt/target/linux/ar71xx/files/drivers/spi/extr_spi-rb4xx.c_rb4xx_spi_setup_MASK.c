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
struct spi_device {int mode; int bits_per_word; int chip_select; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;
struct rb4xx_spi {int cs_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  busy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SPI_CS_HIGH ; 
 int SPI_TX_DUAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rb4xx_spi*,unsigned long*) ; 
 struct rb4xx_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct rb4xx_spi *rbspi = FUNC2(spi->master);
	unsigned long flags;

	if (spi->mode & ~(SPI_CS_HIGH | SPI_TX_DUAL)) {
		FUNC0(&spi->dev, "mode %x not supported\n",
			(unsigned) spi->mode);
		return -EINVAL;
	}

	if (spi->bits_per_word != 8 && spi->bits_per_word != 0) {
		FUNC0(&spi->dev, "bits_per_word %u not supported\n",
			(unsigned) spi->bits_per_word);
		return -EINVAL;
	}

	FUNC3(&rbspi->lock, flags);
	if (rbspi->cs_wait == spi->chip_select && !rbspi->busy) {
		rbspi->cs_wait = -1;
		FUNC1(rbspi, &flags);
	}
	FUNC4(&rbspi->lock, flags);

	return 0;
}