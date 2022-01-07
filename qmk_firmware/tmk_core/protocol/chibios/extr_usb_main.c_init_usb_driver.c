
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int USBDriver ;
struct TYPE_10__ {TYPE_4__* array; } ;
struct TYPE_8__ {int * in_state; } ;
struct TYPE_7__ {int * out_state; } ;
struct TYPE_6__ {int * in_state; } ;
struct TYPE_9__ {int config; int int_ep_state; TYPE_3__ int_ep_config; int out_ep_state; TYPE_2__ out_ep_config; int in_ep_state; TYPE_1__ in_ep_config; int driver; } ;
typedef int QMKUSBDriver ;


 int NUM_USB_DRIVERS ;
 int chVTObjectInit (int *) ;
 TYPE_5__ drivers ;
 int keyboard_idle_timer ;
 int qmkusbObjectInit (int *,int *) ;
 int qmkusbStart (int *,int *) ;
 int usbConnectBus (int *) ;
 int usbDisconnectBus (int *) ;
 int usbStart (int *,int *) ;
 int usbcfg ;
 int wait_ms (int) ;

void init_usb_driver(USBDriver *usbp) {
    for (int i = 0; i < NUM_USB_DRIVERS; i++) {
        QMKUSBDriver *driver = &drivers.array[i].driver;
        drivers.array[i].in_ep_config.in_state = &drivers.array[i].in_ep_state;
        drivers.array[i].out_ep_config.out_state = &drivers.array[i].out_ep_state;
        drivers.array[i].int_ep_config.in_state = &drivers.array[i].int_ep_state;
        qmkusbObjectInit(driver, &drivers.array[i].config);
        qmkusbStart(driver, &drivers.array[i].config);
    }






    usbDisconnectBus(usbp);
    wait_ms(1500);
    usbStart(usbp, &usbcfg);
    usbConnectBus(usbp);

    chVTObjectInit(&keyboard_idle_timer);
}
