#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_12__ {int w; } ;
struct TYPE_11__ {scalar_t__ w; } ;
struct TYPE_10__ {int w; } ;
struct TYPE_15__ {int bmRequestType; TYPE_3__ wLength; TYPE_2__ wIndex; TYPE_1__ wValue; int /*<<< orphan*/  bRequest; } ;
struct TYPE_14__ {TYPE_6__ b; } ;
struct TYPE_13__ {TYPE_5__ setup; } ;
struct TYPE_16__ {TYPE_4__ Control; } ;
typedef  TYPE_7__ USBH_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int*,int) ; 
 int USB_H2D ; 
 int /*<<< orphan*/  USB_HID_SET_REPORT ; 
 int USB_REQ_RECIPIENT_INTERFACE ; 
 int USB_REQ_TYPE_CLASS ; 

USBH_StatusTypeDef FUNC1 (USBH_HandleTypeDef *phost,
                                    uint8_t reportType,
                                    uint8_t reportId,
                                    uint8_t* reportBuff,
                                    uint8_t reportLen)
{
  
  phost->Control.setup.b.bmRequestType = USB_H2D | USB_REQ_RECIPIENT_INTERFACE |\
    USB_REQ_TYPE_CLASS;
  
  
  phost->Control.setup.b.bRequest = USB_HID_SET_REPORT;
  phost->Control.setup.b.wValue.w = (reportType << 8 ) | reportId;
  
  phost->Control.setup.b.wIndex.w = 0;
  phost->Control.setup.b.wLength.w = reportLen;
  
  return FUNC0(phost, reportBuff , reportLen );
}