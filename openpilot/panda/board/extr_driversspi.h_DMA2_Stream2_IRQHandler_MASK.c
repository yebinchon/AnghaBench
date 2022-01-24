#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  LIFCR; } ;

/* Variables and functions */
 TYPE_1__* DMA2 ; 
 int /*<<< orphan*/  DMA_LIFCR_CTCIF2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  spi_buf ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ spi_tx_buf ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

void FUNC5(void) {
  int *resp_len = (int*)spi_tx_buf;
  (void)FUNC0(spi_tx_buf, 0xaa, 0x44);
  *resp_len = FUNC3(spi_buf, 0x14, spi_tx_buf+4);
  #ifdef DEBUG_SPI
    puts("SPI write: ");
    puth(*resp_len);
    puts("\n");
  #endif
  FUNC4(spi_tx_buf, *resp_len + 4);

  // ack
  DMA2->LIFCR = DMA_LIFCR_CTCIF2;
}