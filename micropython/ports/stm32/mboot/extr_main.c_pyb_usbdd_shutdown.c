
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pyb_usbdd ;
 int pyb_usbdd_stop (int *) ;

__attribute__((used)) static int pyb_usbdd_shutdown(void) {
    pyb_usbdd_stop(&pyb_usbdd);
    return 0;
}
