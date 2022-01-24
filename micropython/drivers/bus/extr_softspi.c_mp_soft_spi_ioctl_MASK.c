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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  miso; int /*<<< orphan*/  mosi; int /*<<< orphan*/  sck; int /*<<< orphan*/  polarity; } ;
typedef  TYPE_1__ mp_soft_spi_obj_t ;

/* Variables and functions */
#define  MP_SPI_IOCTL_DEINIT 129 
#define  MP_SPI_IOCTL_INIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(void *self_in, uint32_t cmd) {
    mp_soft_spi_obj_t *self = (mp_soft_spi_obj_t*)self_in;

    switch (cmd) {
        case MP_SPI_IOCTL_INIT:
            FUNC2(self->sck, self->polarity);
            FUNC1(self->sck);
            FUNC1(self->mosi);
            FUNC0(self->miso);
            break;

        case MP_SPI_IOCTL_DEINIT:
            break;
    }

    return 0;
}