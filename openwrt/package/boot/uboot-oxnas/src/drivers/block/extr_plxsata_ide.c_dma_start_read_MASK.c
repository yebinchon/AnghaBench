#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_8__ {unsigned long address_; int /*<<< orphan*/  address_mode_; } ;
typedef  TYPE_1__ oxnas_dma_device_settings_t ;
struct TYPE_9__ {unsigned long address_; } ;

/* Variables and functions */
 scalar_t__ DMA_BASE_DST_ADR ; 
 scalar_t__ DMA_BASE_SRC_ADR ; 
 scalar_t__ DMA_BYTE_CNT ; 
 scalar_t__ DMA_CTRL_STATUS ; 
 int /*<<< orphan*/  OXNAS_DMA_MODE_INC ; 
 scalar_t__ SATA_DMA_REGS_BASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 unsigned long FUNC2 (TYPE_2__*,TYPE_1__*,int) ; 
 TYPE_1__ oxnas_ram_dma_settings ; 
 TYPE_2__ oxnas_sata_dma_settings ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC4(ulong* buffer, int num_bytes)
{
	// Assemble complete memory settings
	oxnas_dma_device_settings_t mem_settings = oxnas_ram_dma_settings;
	mem_settings.address_ = (unsigned long) buffer;
	mem_settings.address_mode_ = OXNAS_DMA_MODE_INC;

	FUNC3(FUNC1(&oxnas_sata_dma_settings, &mem_settings),
		SATA_DMA_REGS_BASE + DMA_CTRL_STATUS);
	FUNC3(oxnas_sata_dma_settings.address_,
		SATA_DMA_REGS_BASE + DMA_BASE_SRC_ADR);
	FUNC3(mem_settings.address_, SATA_DMA_REGS_BASE + DMA_BASE_DST_ADR);
	FUNC3(FUNC2(&oxnas_sata_dma_settings, &mem_settings,
				num_bytes),
		SATA_DMA_REGS_BASE + DMA_BYTE_CNT);

	FUNC0();
}