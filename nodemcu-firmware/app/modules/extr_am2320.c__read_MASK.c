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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_RECEIVER ; 
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  am2320_i2c_addr ; 
 int FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(uint32_t id, void *buf, uint8_t len, uint8_t off)
{
    int i;
    uint8_t *b = (uint8_t *)buf;
    uint16_t crc;

    // step 1: Wake sensor
    FUNC5(id);
    FUNC3(id, am2320_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    FUNC1(800);
    FUNC6(id);

    // step 2: Send read command
    FUNC5(id);
    FUNC3(id, am2320_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    FUNC4(id, 0x03);
    FUNC4(id, off);
    FUNC4(id, len);
    FUNC6(id);

    // step 3: Read the data
    FUNC1(1500);
    FUNC5(id);
    FUNC3(id, am2320_i2c_addr, PLATFORM_I2C_DIRECTION_RECEIVER);
    FUNC1(30);
    for(i=0; i<len+2; i++)
	b[i] = FUNC2(id,1);
    crc  = FUNC2(id,1);
    crc |= FUNC2(id,0) << 8;
    FUNC6(id);

    if(b[0] != 0x3 || b[1] != len)
	return -EIO;
    if(crc != FUNC0(b,len+2))
	return -EIO;
    return 0;
}