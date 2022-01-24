#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_5__ {int is_connected; } ;
struct TYPE_6__ {scalar_t__ gState; TYPE_1__ device; } ;
typedef  TYPE_2__ USBH_HandleTypeDef ;

/* Variables and functions */
 scalar_t__ HOST_CLASS ; 
 int /*<<< orphan*/  USBH_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

USBH_StatusTypeDef FUNC1 (USBH_HandleTypeDef *phost)
{
  if (phost->device.is_connected == 1)
  {
    if(phost->gState == HOST_CLASS)
    {
      FUNC0(phost);
    }
  }
  
  return USBH_OK;
}