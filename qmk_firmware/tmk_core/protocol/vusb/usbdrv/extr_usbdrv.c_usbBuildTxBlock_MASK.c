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
typedef  int usbMsgLen_t ;
typedef  int uchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int USBPID_DATA0 ; 
 int USBPID_DATA1 ; 
 int USBPID_STALL ; 
 int USB_NO_MSG ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (int*,int) ; 
 int usbMsgLen ; 
 int* usbTxBuf ; 
 int usbTxLen ; 

__attribute__((used)) static inline void FUNC3(void) {
    usbMsgLen_t wantLen;
    uchar       len;

    wantLen = usbMsgLen;
    if (wantLen > 8) wantLen = 8;
    usbMsgLen -= wantLen;
    usbTxBuf[0] ^= USBPID_DATA0 ^ USBPID_DATA1; /* DATA toggling */
    len = FUNC2(usbTxBuf + 1, wantLen);
    if (len <= 8) { /* valid data packet */
        FUNC1(&usbTxBuf[1], len);
        len += 4;     /* length including sync byte */
        if (len < 12) /* a partial package identifies end of message */
            usbMsgLen = USB_NO_MSG;
    } else {
        len       = USBPID_STALL; /* stall the endpoint */
        usbMsgLen = USB_NO_MSG;
    }
    usbTxLen = len;
    FUNC0(0x20, usbTxBuf, len - 1);
}