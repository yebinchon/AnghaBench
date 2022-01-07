
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TXINI ;
 int UEINTX ;

__attribute__((used)) static inline void usb_wait_in_ready(void) {
    while (!(UEINTX & (1 << TXINI)))
        ;
}
