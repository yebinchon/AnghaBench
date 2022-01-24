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
typedef  int int16_t ;
struct TYPE_2__ {int AC6; int AC5; int MC; int MD; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 TYPE_1__ bmp085_data ; 
 int /*<<< orphan*/  bmp085_i2c_addr ; 
 int /*<<< orphan*/  bmp085_i2c_id ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t FUNC6(void) {
    int16_t t, X1, X2;

    FUNC3(bmp085_i2c_id);
    FUNC1(bmp085_i2c_id, bmp085_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    FUNC2(bmp085_i2c_id, 0xF4);
    FUNC2(bmp085_i2c_id, 0x2E);
    FUNC4(bmp085_i2c_id);

    // Wait for device to complete sampling
    FUNC0(4500);

    t = FUNC5(bmp085_i2c_id, 0xF6);
    X1 = ((t - bmp085_data.AC6) * bmp085_data.AC5) >> 15;
    X2 = (bmp085_data.MC << 11)/ (X1 + bmp085_data.MD);

    return X1 + X2;
}