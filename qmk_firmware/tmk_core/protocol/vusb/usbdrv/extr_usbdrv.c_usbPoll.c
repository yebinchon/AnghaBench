
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uchar ;
typedef scalar_t__ schar ;


 int DBG1 (int,int ,int ) ;
 scalar_t__ USBIN ;
 scalar_t__ USBMASK ;
 scalar_t__ USB_BUFSIZE ;
 scalar_t__ USB_NO_MSG ;
 int usbBuildTxBlock () ;
 scalar_t__ usbDeviceAddr ;
 int usbHandleResetHook (scalar_t__) ;
 scalar_t__ usbInputBufOffset ;
 scalar_t__ usbMsgLen ;
 scalar_t__ usbNewDeviceAddr ;
 int usbProcessRx (scalar_t__,scalar_t__) ;
 int usbResetStall () ;
 scalar_t__ usbRxBuf ;
 scalar_t__ usbRxLen ;
 int usbTxLen ;

void usbPoll(void) {
    schar len;
    uchar i;

    len = usbRxLen - 3;
    if (len >= 0) {






        usbProcessRx(usbRxBuf + USB_BUFSIZE + 1 - usbInputBufOffset, len);




        usbRxLen = 0;

    }
    if (usbTxLen & 0x10) {
        if (usbMsgLen != USB_NO_MSG) {
            usbBuildTxBlock();
        }
    }
    for (i = 20; i > 0; i--) {
        uchar usbLineStatus = USBIN & USBMASK;
        if (usbLineStatus != 0)
            goto isNotReset;
    }

    usbNewDeviceAddr = 0;
    usbDeviceAddr = 0;
    usbResetStall();
    DBG1(0xff, 0, 0);
isNotReset:
    usbHandleResetHook(i);
}
