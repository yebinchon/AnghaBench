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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(uint32_t reg, uint32_t data)
{
    /* send start condition */
    FUNC0();
    /* send CTRL1 code: 0b1010*/
    FUNC3(0x0a, 4);
    /* send CTRL2 code: 0b100 */
    FUNC3(0x04, 3);
    /* send WRITE command */
    FUNC3(0x00, 1);

    /* wait for ACK */
    if (FUNC2())
        return -1;

    /* send address low */
    FUNC3(reg & 0xFF, 8);
    /* wait for ACK */
    if (FUNC2())
        return -1;
    /* send address high */
    FUNC3((reg & 0xFF00) >> 8, 8);
    /* wait for ACK */
    if (FUNC2())
        return -1;

    /* send data low */
    FUNC3(data & 0xFF, 8);
    /* wait for ACK */
    if (FUNC2())
        return -1;
    /* send data high */
    FUNC3((data & 0xFF00) >> 8, 8);
    /* wait for ACK */
    if (FUNC2())
        return -1;

    /* send stop condition */
    FUNC1();

    return 0;
}