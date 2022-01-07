
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usbMsgLen_t ;
typedef int uchar ;


 int DBG2 (int,int*,int) ;
 int USBPID_DATA0 ;
 int USBPID_DATA1 ;
 int USBPID_STALL ;
 int USB_NO_MSG ;
 int usbCrc16Append (int*,int) ;
 int usbDeviceRead (int*,int) ;
 int usbMsgLen ;
 int* usbTxBuf ;
 int usbTxLen ;

__attribute__((used)) static inline void usbBuildTxBlock(void) {
    usbMsgLen_t wantLen;
    uchar len;

    wantLen = usbMsgLen;
    if (wantLen > 8) wantLen = 8;
    usbMsgLen -= wantLen;
    usbTxBuf[0] ^= USBPID_DATA0 ^ USBPID_DATA1;
    len = usbDeviceRead(usbTxBuf + 1, wantLen);
    if (len <= 8) {
        usbCrc16Append(&usbTxBuf[1], len);
        len += 4;
        if (len < 12)
            usbMsgLen = USB_NO_MSG;
    } else {
        len = USBPID_STALL;
        usbMsgLen = USB_NO_MSG;
    }
    usbTxLen = len;
    DBG2(0x20, usbTxBuf, len - 1);
}
