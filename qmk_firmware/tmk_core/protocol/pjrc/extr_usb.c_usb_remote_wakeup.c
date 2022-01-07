
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RMWKUP ;
 int UDCON ;

void usb_remote_wakeup(void) {
    UDCON |= (1 << RMWKUP);
    while (UDCON & (1 << RMWKUP))
        ;
}
