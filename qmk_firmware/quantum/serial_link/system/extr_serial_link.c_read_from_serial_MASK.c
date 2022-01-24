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
typedef  int /*<<< orphan*/  SerialDriver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static uint32_t FUNC2(SerialDriver* driver, uint8_t link) {
    const uint32_t buffer_size = 16;
    uint8_t        buffer[buffer_size];
    uint32_t       bytes_read = FUNC1(driver, buffer, buffer_size);
    uint8_t*       current    = buffer;
    uint8_t*       end        = current + bytes_read;
    while (current < end) {
        FUNC0(link, *current);
        current++;
    }
    return bytes_read;
}