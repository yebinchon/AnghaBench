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
typedef  int uint8 ;
typedef  int uint32 ;

/* Variables and functions */
 int MAX_BAUD ; 
 int /*<<< orphan*/  OFS_DATA_FORMAT ; 
 int /*<<< orphan*/  OFS_DIVISOR_LSB ; 
 int /*<<< orphan*/  OFS_DIVISOR_MSB ; 
 int /*<<< orphan*/  OFS_INTR_ENABLE ; 
 int /*<<< orphan*/  OFS_LINE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(uint32 baud, uint8 data, uint8 parity, uint8 stop)
{
    /* disable interrupts */
    FUNC0(OFS_INTR_ENABLE, 0);

    /* set up buad rate */
    { 
        uint32 divisor;
       
        /* set DIAB bit */
        FUNC0(OFS_LINE_CONTROL, 0x80);
        
        /* set divisor */
        divisor = MAX_BAUD / baud;
        FUNC0(OFS_DIVISOR_LSB, divisor & 0xff);
        FUNC0(OFS_DIVISOR_MSB, (divisor & 0xff00)>>8);

        /* clear DIAB bit */
        FUNC0(OFS_LINE_CONTROL, 0x0);
    }

    /* set data format */
    FUNC0(OFS_DATA_FORMAT, data | parity | stop);
}