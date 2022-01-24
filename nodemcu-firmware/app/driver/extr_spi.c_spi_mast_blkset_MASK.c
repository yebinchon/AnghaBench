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
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_USR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,size_t) ; 

void FUNC4(uint8 spi_no, size_t bitlen, const uint8 *data)
{
    size_t aligned_len = bitlen >> 3;

    while(FUNC0(FUNC1(spi_no)) & SPI_USR);

    if (aligned_len % 4) {
        // length for memcpy needs to be aligned to uint32 bounday
        // otherwise single byte writes are issued to the register and corrupt data
        aligned_len += 4 - (aligned_len % 4);
    }
    FUNC3((void *)FUNC2(spi_no), (const void *)data, aligned_len);
}