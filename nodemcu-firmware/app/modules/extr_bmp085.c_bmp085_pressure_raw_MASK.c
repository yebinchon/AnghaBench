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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  bmp085_i2c_addr ; 
 int /*<<< orphan*/  bmp085_i2c_id ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int32_t FUNC6(int oss) {
    int32_t p;
    int32_t p1, p2, p3;

    FUNC3(bmp085_i2c_id);
    FUNC1(bmp085_i2c_id, bmp085_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    FUNC2(bmp085_i2c_id, 0xF4);
    FUNC2(bmp085_i2c_id, 0x34 + 64 * oss);
    FUNC4(bmp085_i2c_id);

    // Wait for device to complete sampling
    switch (oss) {
        case 0: FUNC0( 4500); break;
        case 1: FUNC0( 7500); break;
        case 2: FUNC0(13500); break;
        case 3: FUNC0(25500); break;
    }

    p1 = FUNC5(bmp085_i2c_id, 0xF6);
    p2 = FUNC5(bmp085_i2c_id, 0xF7);
    p3 = FUNC5(bmp085_i2c_id, 0xF8);
    p = (p1 << 16) | (p2 << 8) | p3;
    p = p >> (8 - oss);

    return p;
}