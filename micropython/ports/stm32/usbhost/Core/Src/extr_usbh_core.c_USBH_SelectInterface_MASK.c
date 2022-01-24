#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_7__ {size_t bNumInterfaces; TYPE_1__* Itf_Desc; } ;
struct TYPE_8__ {size_t current_interface; TYPE_2__ CfgDesc; } ;
struct TYPE_9__ {TYPE_3__ device; } ;
typedef  TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_6__ {size_t bInterfaceClass; size_t bInterfaceSubClass; size_t bInterfaceProtocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  USBH_FAIL ; 
 int /*<<< orphan*/  USBH_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 

USBH_StatusTypeDef FUNC2(USBH_HandleTypeDef *phost, uint8_t interface)
{
  USBH_StatusTypeDef   status = USBH_OK;
  
  if(interface < phost->device.CfgDesc.bNumInterfaces)
  {
    phost->device.current_interface = interface;
    FUNC1 ("Switching to Interface (#%d)", interface);
    FUNC1 ("Class    : %xh", phost->device.CfgDesc.Itf_Desc[interface].bInterfaceClass );
    FUNC1 ("SubClass : %xh", phost->device.CfgDesc.Itf_Desc[interface].bInterfaceSubClass );
    FUNC1 ("Protocol : %xh", phost->device.CfgDesc.Itf_Desc[interface].bInterfaceProtocol );                 
  }
  else
  {
    FUNC0 ("Cannot Select This Interface.");
    status = USBH_FAIL; 
  }
  return status;  
}