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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int SPI_USR ; 
 int SPI_USR_ADDR ; 
 int SPI_USR_COMMAND ; 
 int SPI_USR_DUMMY ; 
 int SPI_USR_MISO ; 
 int SPI_USR_MISO_BITLEN ; 
 int SPI_USR_MISO_BITLEN_S ; 
 int SPI_USR_MOSI ; 
 int SPI_USR_MOSI_BITLEN ; 
 int SPI_USR_MOSI_BITLEN_S ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int SPI_WR_BYTE_ORDER ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 

inline void FUNC9(uint8_t spi_no, uint8_t dout_data) {
    while (FUNC8(spi_no)) {};  // Wait for SPI to be ready

// Enable SPI Functions
    // Disable MOSI, MISO, ADDR, COMMAND, DUMMY in case previously set.
    FUNC0(FUNC4(spi_no), SPI_USR_MOSI | SPI_USR_MISO |
                        SPI_USR_COMMAND | SPI_USR_ADDR | SPI_USR_DUMMY);

// Setup Bitlengths
    FUNC7(FUNC5(spi_no),
        // Number of bits to Send
        ((8 - 1) & SPI_USR_MOSI_BITLEN) << SPI_USR_MOSI_BITLEN_S |
        // Number of bits to receive
        ((8 - 1) & SPI_USR_MISO_BITLEN) << SPI_USR_MISO_BITLEN_S);


// Setup DOUT data
    // Enable MOSI function in SPI module
    FUNC2(FUNC4(spi_no), SPI_USR_MOSI);
    // Copy data to W0
    if (FUNC1(FUNC4(spi_no)) & SPI_WR_BYTE_ORDER) {
        FUNC7(FUNC6(spi_no), dout_data << (32 - 8));
    } else {
        FUNC7(FUNC6(spi_no), dout_data);
    }

// Begin SPI Transaction
    FUNC2(FUNC3(spi_no), SPI_USR);
}