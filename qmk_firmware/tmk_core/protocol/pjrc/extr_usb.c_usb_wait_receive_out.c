
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RXOUTI ;
 int UEINTX ;

__attribute__((used)) static inline void usb_wait_receive_out(void) {
    while (!(UEINTX & (1 << RXOUTI)))
        ;
}
