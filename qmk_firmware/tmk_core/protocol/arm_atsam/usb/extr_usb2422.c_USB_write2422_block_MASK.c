#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ SYSOP; } ;
struct TYPE_10__ {TYPE_3__ bit; } ;
struct TYPE_7__ {int CMD; } ;
struct TYPE_8__ {TYPE_1__ bit; } ;
struct TYPE_11__ {TYPE_4__ SYNCBUSY; TYPE_2__ CTRLB; } ;
struct TYPE_12__ {TYPE_5__ I2CM; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_USB_WRITE2422_BLOCK_BEGIN ; 
 int /*<<< orphan*/  DC_USB_WRITE2422_BLOCK_COMPLETE ; 
 int /*<<< orphan*/  DC_USB_WRITE2422_BLOCK_SYNC_SYSOP ; 
 TYPE_6__* SERCOM0 ; 
 int /*<<< orphan*/  USB2422_ADDR ; 
 int /*<<< orphan*/  USB2422_shadow ; 
 unsigned char* i2c0_buf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void) {
    unsigned char *dest = i2c0_buf;
    unsigned char *src;
    unsigned char *base = (unsigned char *)&USB2422_shadow;

    FUNC0(DC_USB_WRITE2422_BLOCK_BEGIN);

    for (src = base; src < base + 256; src += 32) {
        dest[0] = src - base;
        dest[1] = 32;
        FUNC2(&dest[2], src, 32);
        FUNC1(USB2422_ADDR, dest, 34, 50000);
        SERCOM0->I2CM.CTRLB.bit.CMD = 0x03;
        while (SERCOM0->I2CM.SYNCBUSY.bit.SYSOP) {
            FUNC0(DC_USB_WRITE2422_BLOCK_SYNC_SYSOP);
        }
        FUNC3(100);
    }

    FUNC0(DC_USB_WRITE2422_BLOCK_COMPLETE);
}