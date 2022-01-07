
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RXOUTI ;
 int UEINTX ;

__attribute__((used)) static inline void usb_ack_out(void) { UEINTX = ~(1 << RXOUTI); }
