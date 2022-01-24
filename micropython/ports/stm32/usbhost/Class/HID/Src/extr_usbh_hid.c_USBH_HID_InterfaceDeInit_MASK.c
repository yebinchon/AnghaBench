#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_9__ {TYPE_1__* pActiveClass; } ;
typedef  TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_10__ {int InPipe; int OutPipe; } ;
struct TYPE_8__ {TYPE_3__* pData; } ;
typedef  TYPE_3__ HID_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  USBH_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

USBH_StatusTypeDef FUNC3 (USBH_HandleTypeDef *phost )
{	
  HID_HandleTypeDef *HID_Handle =  phost->pActiveClass->pData; 
  
  if(HID_Handle->InPipe != 0x00)
  {   
    FUNC0  (phost, HID_Handle->InPipe);
    FUNC1  (phost, HID_Handle->InPipe);
    HID_Handle->InPipe = 0;     /* Reset the pipe as Free */  
  }
  
  if(HID_Handle->OutPipe != 0x00)
  {   
    FUNC0(phost, HID_Handle->OutPipe);
    FUNC1  (phost, HID_Handle->OutPipe);
    HID_Handle->OutPipe = 0;     /* Reset the pipe as Free */  
  }
  
  if(phost->pActiveClass->pData)
  {
    FUNC2 (phost->pActiveClass->pData);
  }

  return USBH_OK;
}