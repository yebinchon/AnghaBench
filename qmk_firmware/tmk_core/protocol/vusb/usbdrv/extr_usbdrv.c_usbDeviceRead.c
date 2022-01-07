
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uchar ;


 int USB_FLG_MSGPTR_IS_ROM ;
 int USB_FLG_USE_USER_RW ;
 scalar_t__ USB_READ_FLASH (scalar_t__*) ;
 scalar_t__ usbFunctionRead (scalar_t__*,scalar_t__) ;
 int usbMsgFlags ;
 scalar_t__* usbMsgPtr ;

__attribute__((used)) static uchar usbDeviceRead(uchar *data, uchar len) {
    if (len > 0) {





        {
            uchar i = len, *r = usbMsgPtr;
            if (usbMsgFlags & USB_FLG_MSGPTR_IS_ROM) {
                do {
                    uchar c = USB_READ_FLASH(r);
                    *data++ = c;
                    r++;
                } while (--i);
            } else {
                do {
                    *data++ = *r++;
                } while (--i);
            }
            usbMsgPtr = r;
        }
    }
    return len;
}
