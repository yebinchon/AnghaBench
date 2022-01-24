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
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_3__ {int /*<<< orphan*/ * spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICROPY_HW_SPI1_NAME ; 
 int /*<<< orphan*/  MICROPY_HW_SPI2_NAME ; 
 int /*<<< orphan*/  MICROPY_HW_SPI3_NAME ; 
 int /*<<< orphan*/  MICROPY_HW_SPI4_NAME ; 
 int /*<<< orphan*/  MICROPY_HW_SPI5_NAME ; 
 int /*<<< orphan*/  MICROPY_HW_SPI6_NAME ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_type_ValueError ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* spi_obj ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ) ; 

int FUNC7(mp_obj_t id) {
    if (FUNC2(id)) {
        // given a string id
        const char *port = FUNC4(id);
        if (0) {
        #ifdef MICROPY_HW_SPI1_NAME
        } else if (strcmp(port, MICROPY_HW_SPI1_NAME) == 0) {
            return 1;
        #endif
        #ifdef MICROPY_HW_SPI2_NAME
        } else if (strcmp(port, MICROPY_HW_SPI2_NAME) == 0) {
            return 2;
        #endif
        #ifdef MICROPY_HW_SPI3_NAME
        } else if (strcmp(port, MICROPY_HW_SPI3_NAME) == 0) {
            return 3;
        #endif
        #ifdef MICROPY_HW_SPI4_NAME
        } else if (strcmp(port, MICROPY_HW_SPI4_NAME) == 0) {
            return 4;
        #endif
        #ifdef MICROPY_HW_SPI5_NAME
        } else if (strcmp(port, MICROPY_HW_SPI5_NAME) == 0) {
            return 5;
        #endif
        #ifdef MICROPY_HW_SPI6_NAME
        } else if (strcmp(port, MICROPY_HW_SPI6_NAME) == 0) {
            return 6;
        #endif
        }
        FUNC5(FUNC3(&mp_type_ValueError,
            "SPI(%s) doesn't exist", port));
    } else {
        // given an integer id
        int spi_id = FUNC1(id);
        if (spi_id >= 1 && spi_id <= FUNC0(spi_obj)
            && spi_obj[spi_id - 1].spi != NULL) {
            return spi_id;
        }
        FUNC5(FUNC3(&mp_type_ValueError,
            "SPI(%d) doesn't exist", spi_id));
    }
}