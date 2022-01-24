#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {TYPE_2__* instance; } ;
typedef  TYPE_1__ dma_descr_t ;
struct TYPE_6__ {int CR; int FCR; scalar_t__ NDTR; } ;
typedef  TYPE_2__ DMA_Stream_TypeDef ;

/* Variables and functions */
 int DMA_SxCR_EN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 () ; 

void FUNC2(const dma_descr_t *descr) {
    DMA_Stream_TypeDef *dma = descr->instance;
    dma->CR &= ~DMA_SxCR_EN;
    uint32_t t0 = FUNC1();
    while ((dma->CR & DMA_SxCR_EN) && FUNC1() - t0 < 100) {
    }
    dma->CR = 0;
    dma->NDTR = 0;
    dma->FCR = 0x21;
    FUNC0(descr);
}