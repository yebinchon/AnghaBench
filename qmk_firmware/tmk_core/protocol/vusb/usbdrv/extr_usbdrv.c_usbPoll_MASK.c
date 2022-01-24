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
typedef  scalar_t__ uchar ;
typedef  scalar_t__ schar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ USBIN ; 
 scalar_t__ USBMASK ; 
 scalar_t__ USB_BUFSIZE ; 
 scalar_t__ USB_NO_MSG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ usbDeviceAddr ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ usbInputBufOffset ; 
 scalar_t__ usbMsgLen ; 
 scalar_t__ usbNewDeviceAddr ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ usbRxBuf ; 
 scalar_t__ usbRxLen ; 
 int usbTxLen ; 

void FUNC5(void) {
    schar len;
    uchar i;

    len = usbRxLen - 3;
    if (len >= 0) {
        /* We could check CRC16 here -- but ACK has already been sent anyway. If you
         * need data integrity checks with this driver, check the CRC in your app
         * code and report errors back to the host. Since the ACK was already sent,
         * retries must be handled on application level.
         * unsigned crc = usbCrc16(buffer + 1, usbRxLen - 3);
         */
        FUNC3(usbRxBuf + USB_BUFSIZE + 1 - usbInputBufOffset, len);
#if USB_CFG_HAVE_FLOWCONTROL
        if (usbRxLen > 0) /* only mark as available if not inactivated */
            usbRxLen = 0;
#else
        usbRxLen = 0; /* mark rx buffer as available */
#endif
    }
    if (usbTxLen & 0x10) {             /* transmit system idle */
        if (usbMsgLen != USB_NO_MSG) { /* transmit data pending? */
            FUNC1();
        }
    }
    for (i = 20; i > 0; i--) {
        uchar usbLineStatus = USBIN & USBMASK;
        if (usbLineStatus != 0) /* SE0 has ended */
            goto isNotReset;
    }
    /* RESET condition, called multiple times during reset */
    usbNewDeviceAddr = 0;
    usbDeviceAddr    = 0;
    FUNC4();
    FUNC0(0xff, 0, 0);
isNotReset:
    FUNC2(i);
}