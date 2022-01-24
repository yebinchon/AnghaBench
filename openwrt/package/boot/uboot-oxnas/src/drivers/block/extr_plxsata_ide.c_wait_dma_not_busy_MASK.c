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

/* Variables and functions */
 scalar_t__ DMA_CTRL_STATUS ; 
 unsigned int DMA_CTRL_STATUS_RESET ; 
 int MAX_DMA_ABORT_LOOPS ; 
 int MAX_DMA_XFER_LOOPS ; 
 scalar_t__ SATA_DMA_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(int device)
{
	unsigned int cleanup_required = 0;

	/* Poll for DMA completion */
	int loops = MAX_DMA_XFER_LOOPS;
	do {
		if (!FUNC0()) {
			break;
		}
		FUNC3(100);
	} while (--loops);

	if (!loops) {
		FUNC1("wait_dma_not_busy() Timed out of wait for DMA not busy\n");
		cleanup_required = 1;
	}

	if (cleanup_required) {
		/* Abort DMA to make sure it has finished. */
		unsigned int ctrl_status = FUNC2(
			SATA_DMA_CHANNEL + DMA_CTRL_STATUS);
		ctrl_status |= DMA_CTRL_STATUS_RESET;
		FUNC4(ctrl_status, SATA_DMA_CHANNEL + DMA_CTRL_STATUS);

		// Wait for the channel to become idle - should be quick as should
		// finish after the next AHB single or burst transfer
		loops = MAX_DMA_ABORT_LOOPS;
		do {
			if (!FUNC0()) {
				break;
			}
			FUNC3(10);
		} while (--loops);

		if (!loops) {
			FUNC1("wait_dma_not_busy() Timed out of wait for DMA channel abort\n");
		} else {
			/* Successfully cleanup the DMA channel */
			cleanup_required = 0;
		}

		// Deassert reset for the channel
		ctrl_status = FUNC2(SATA_DMA_CHANNEL + DMA_CTRL_STATUS);
		ctrl_status &= ~DMA_CTRL_STATUS_RESET;
		FUNC4(ctrl_status, SATA_DMA_CHANNEL + DMA_CTRL_STATUS);
	}

	return !cleanup_required;
}