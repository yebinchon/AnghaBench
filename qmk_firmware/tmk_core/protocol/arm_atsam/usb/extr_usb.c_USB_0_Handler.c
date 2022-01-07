
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* hw; } ;
struct TYPE_6__ {scalar_t__ MODE; } ;
struct TYPE_7__ {TYPE_1__ bit; } ;
struct TYPE_8__ {TYPE_2__ CTRLA; } ;
struct TYPE_9__ {TYPE_3__ DEVICE; } ;


 int _usb_device_interrupt_handler () ;
 TYPE_5__* _usb_instances ;

void USB_0_Handler(void) {
    if (_usb_instances->hw->DEVICE.CTRLA.bit.MODE) {
    } else {

        _usb_device_interrupt_handler();
    }
}
