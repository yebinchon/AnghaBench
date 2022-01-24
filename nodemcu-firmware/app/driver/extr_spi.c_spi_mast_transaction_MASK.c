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
typedef  int uint8 ;
typedef  int uint32 ;
typedef  int uint16 ;
typedef  int sint16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int SPI_DOUTDIN ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int SPI_USR ; 
 int SPI_USR_ADDR ; 
 int SPI_USR_ADDR_BITLEN ; 
 int SPI_USR_ADDR_BITLEN_S ; 
 int SPI_USR_COMMAND ; 
 int SPI_USR_COMMAND_BITLEN ; 
 int SPI_USR_COMMAND_BITLEN_S ; 
 int SPI_USR_COMMAND_VALUE ; 
 int SPI_USR_DUMMY ; 
 int SPI_USR_DUMMY_CYCLELEN ; 
 int SPI_USR_DUMMY_CYCLELEN_S ; 
 int SPI_USR_MISO ; 
 int SPI_USR_MISO_BITLEN ; 
 int SPI_USR_MISO_BITLEN_S ; 
 int SPI_USR_MOSI ; 
 int SPI_USR_MOSI_BITLEN ; 
 int SPI_USR_MOSI_BITLEN_S ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(uint8 spi_no, uint8 cmd_bitlen, uint16 cmd_data, uint8 addr_bitlen, uint32 addr_data,
                          uint16 mosi_bitlen, uint8 dummy_bitlen, sint16 miso_bitlen)
{
    if (spi_no > 1)
        return; // handle invalid input number

    while(FUNC1(FUNC4(spi_no)) & SPI_USR);

    // default disable COMMAND, ADDR, MOSI, DUMMY, MISO, and DOUTDIN (aka full-duplex)
    FUNC0(FUNC5(spi_no), SPI_USR_COMMAND|SPI_USR_ADDR|SPI_USR_MOSI|SPI_USR_DUMMY|SPI_USR_MISO|SPI_DOUTDIN);
    // default set bit lengths
    FUNC8(FUNC6(spi_no),
                   ((addr_bitlen - 1)  & SPI_USR_ADDR_BITLEN)    << SPI_USR_ADDR_BITLEN_S    |
                   ((mosi_bitlen - 1)  & SPI_USR_MOSI_BITLEN)    << SPI_USR_MOSI_BITLEN_S    |
                   ((dummy_bitlen - 1) & SPI_USR_DUMMY_CYCLELEN) << SPI_USR_DUMMY_CYCLELEN_S |
                   ((miso_bitlen - 1)  & SPI_USR_MISO_BITLEN)    << SPI_USR_MISO_BITLEN_S);

    // handle the transaction components
    if (cmd_bitlen > 0)
    {
        uint16 cmd = cmd_data << (16 - cmd_bitlen); // align to MSB
        cmd = (cmd >> 8) | (cmd << 8);              // swap byte order
        FUNC8(FUNC7(spi_no),
                       ((cmd_bitlen - 1 & SPI_USR_COMMAND_BITLEN) << SPI_USR_COMMAND_BITLEN_S) |
                       (cmd & SPI_USR_COMMAND_VALUE));
        FUNC2(FUNC5(spi_no), SPI_USR_COMMAND);
    }
    if (addr_bitlen > 0)
    {
        FUNC8(FUNC3(spi_no), addr_data << (32 - addr_bitlen));
        FUNC2(FUNC5(spi_no), SPI_USR_ADDR);
    }
    if (mosi_bitlen > 0)
    {
        FUNC2(FUNC5(spi_no), SPI_USR_MOSI);
    }
    if (dummy_bitlen > 0)
    {
        FUNC2(FUNC5(spi_no), SPI_USR_DUMMY);
    }
    if (miso_bitlen > 0)
    {
        FUNC2(FUNC5(spi_no), SPI_USR_MISO);
    }
    else if (miso_bitlen < 0)
    {
        FUNC2(FUNC5(spi_no), SPI_DOUTDIN);
    }

    // start transaction
    FUNC2(FUNC4(spi_no), SPI_USR);

    while(FUNC1(FUNC4(spi_no)) & SPI_USR);
}