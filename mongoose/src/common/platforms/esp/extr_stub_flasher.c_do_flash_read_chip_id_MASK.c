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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  chip_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_FLASH_RDID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(void) {
  uint32_t chip_id = 0;
  FUNC3(FUNC1(0), SPI_FLASH_RDID);
  while (FUNC0(FUNC1(0)) & SPI_FLASH_RDID) {
  }
  chip_id = FUNC0(FUNC2(0)) & 0xFFFFFF;
  FUNC4((uint8_t *) &chip_id, sizeof(chip_id));
  return 0;
}