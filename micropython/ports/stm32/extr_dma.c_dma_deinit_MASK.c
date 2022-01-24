#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t id; } ;
typedef  TYPE_1__ dma_descr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/ ** dma_handle ; 
 int /*<<< orphan*/ * dma_irqn ; 

void FUNC2(const dma_descr_t *dma_descr) {
    if (dma_descr != NULL) {
        #if !defined(STM32F0)
        FUNC0(dma_irqn[dma_descr->id]);
        #endif
        dma_handle[dma_descr->id] = NULL;

        FUNC1(dma_descr->id);
    }
}