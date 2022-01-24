#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int HISR; int HIFCR; } ;
struct TYPE_3__ {int /*<<< orphan*/  NDTR; int /*<<< orphan*/  CR; } ;

/* Variables and functions */
 TYPE_2__* DMA2 ; 
 TYPE_1__* DMA2_Stream5 ; 
 int DMA_HIFCR_CDMEIF5 ; 
 int DMA_HIFCR_CFEIF5 ; 
 int DMA_HIFCR_CHTIF5 ; 
 int DMA_HIFCR_CTCIF5 ; 
 int DMA_HIFCR_CTEIF5 ; 
 int DMA_HISR_DMEIF5 ; 
 int DMA_HISR_FEIF5 ; 
 int DMA_HISR_TEIF5 ; 
 int /*<<< orphan*/  DMA_SxCR_EN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  uart_ring_esp_gps ; 

void FUNC4(void) {
  FUNC0();

  // Handle errors
  if((DMA2->HISR & DMA_HISR_TEIF5) || (DMA2->HISR & DMA_HISR_DMEIF5) || (DMA2->HISR & DMA_HISR_FEIF5)){
    #ifdef DEBUG_UART
      puts("Encountered UART DMA error. Clearing and restarting DMA...\n");
    #endif

    // Clear flags
    DMA2->HIFCR = DMA_HIFCR_CTEIF5 | DMA_HIFCR_CDMEIF5 | DMA_HIFCR_CFEIF5;

    // Re-enable the DMA if necessary
    DMA2_Stream5->CR |= DMA_SxCR_EN;
  }

  // Re-calculate write pointer and reset flags
  FUNC2(&uart_ring_esp_gps, DMA2_Stream5->NDTR);
  DMA2->HIFCR = DMA_HIFCR_CTCIF5 | DMA_HIFCR_CHTIF5;

  FUNC1();
}