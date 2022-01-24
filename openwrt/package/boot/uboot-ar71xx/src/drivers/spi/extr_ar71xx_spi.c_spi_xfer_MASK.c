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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct spi_slave {int /*<<< orphan*/  cs; } ;
struct ar71xx_spi_slave {int dummy; } ;

/* Variables and functions */
 scalar_t__ AR71XX_SPI_BASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int SPI_FS_GPIO ; 
 int SPI_IOC_CLK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SPI_IOC_CS_ALL ; 
 int SPI_IOC_DO ; 
 scalar_t__ SPI_REG_FS ; 
 scalar_t__ SPI_REG_IOC ; 
 scalar_t__ SPI_REG_RDS ; 
 unsigned long SPI_XFER_BEGIN ; 
 unsigned long SPI_XFER_END ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ar71xx_spi_slave* FUNC5 (struct spi_slave*) ; 

int FUNC6(struct spi_slave *slave, unsigned int bitlen, const void *dout,
		void *din, unsigned long flags)
{
	struct ar71xx_spi_slave *ss = FUNC5(slave);
	uint8_t *rx = din;
	const uint8_t *tx = dout;
	uint8_t curbyte, curbitlen, restbits;
	uint32_t bytes = bitlen / 8;
	uint32_t out;
	uint32_t in;
	
	FUNC1("ar71xx_spi: spi_xfer: slave:%p bitlen:%08x dout:%p din:%p flags:%08x\n", slave, bitlen, dout, din, flags);
	
	if (flags & SPI_XFER_BEGIN) {
		FUNC4(SPI_FS_GPIO, FUNC0(AR71XX_SPI_BASE + SPI_REG_FS));
		FUNC4(SPI_IOC_CS_ALL, FUNC0(AR71XX_SPI_BASE + SPI_REG_IOC));
	}
	
	restbits = (bitlen % 8);
	if (restbits != 0)
		bytes++;

	// enable chip select
	out = SPI_IOC_CS_ALL & ~(FUNC2(slave->cs));

	while (bytes--) {
		
		curbyte = 0;
		if (tx) {
			curbyte = *tx++;
		}
		
		if (restbits != 0) {
			curbitlen = restbits;
			curbyte <<= 8 - restbits;
		} else {
			curbitlen = 8;
		}
		
		FUNC1("ar71xx_spi: sending: data:%02x length:%d\n", curbyte, curbitlen);
		
		/* clock starts at inactive polarity */
		for (curbyte <<= (8 - curbitlen); curbitlen; curbitlen--) {

			if (curbyte & (1 << 7))
				out |= SPI_IOC_DO;
			else
				out &= ~(SPI_IOC_DO);

			/* setup MSB (to slave) on trailing edge */
			FUNC4(out, FUNC0(AR71XX_SPI_BASE + SPI_REG_IOC));

			FUNC4(out | SPI_IOC_CLK, FUNC0(AR71XX_SPI_BASE + SPI_REG_IOC));

			curbyte <<= 1;
		}
		
		in = FUNC3(FUNC0(AR71XX_SPI_BASE + SPI_REG_RDS));
		FUNC1("ar71xx_spi: received:%02x\n", in);
		
		if (rx) {
			if (restbits == 0) {
				*rx++ = in;
			} else {
				*rx++ = (in << (8 - restbits));
			}
		}
	}
	
	if (flags & SPI_XFER_END) {
		FUNC4(FUNC2(slave->cs), FUNC0(AR71XX_SPI_BASE + SPI_REG_IOC));
		FUNC4(SPI_IOC_CS_ALL, FUNC0(AR71XX_SPI_BASE + SPI_REG_IOC));
		FUNC4(0, FUNC0(AR71XX_SPI_BASE + SPI_REG_FS));
	}

	FUNC1(" ---> out\n");
	
	return 0;
}