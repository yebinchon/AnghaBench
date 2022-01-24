#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_12__ {int Timer; int /*<<< orphan*/  os_event; TYPE_1__* pActiveClass; } ;
typedef  TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_13__ {int state; int timer; int DataReady; int /*<<< orphan*/  ep_addr; int /*<<< orphan*/  InPipe; int /*<<< orphan*/  length; int /*<<< orphan*/  pData; int /*<<< orphan*/  fifo; int /*<<< orphan*/  (* Init ) (TYPE_2__*) ;} ;
struct TYPE_11__ {TYPE_3__* pData; } ;
typedef  TYPE_3__ HID_HandleTypeDef ;

/* Variables and functions */
#define  HID_GET_DATA 132 
#define  HID_IDLE 131 
#define  HID_INIT 130 
#define  HID_POLL 129 
#define  HID_SYNC 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBH_OK ; 
 int /*<<< orphan*/  USBH_URB_DONE ; 
 int /*<<< orphan*/  USBH_URB_EVENT ; 
 int /*<<< orphan*/  USBH_URB_STALL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static USBH_StatusTypeDef FUNC8(USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_OK;
  HID_HandleTypeDef *HID_Handle =  phost->pActiveClass->pData;
  
  switch (HID_Handle->state)
  {
  case HID_INIT:
    HID_Handle->Init(phost); 
  case HID_IDLE:
    if(FUNC2 (phost,
                           0x01,
                            0,
                            HID_Handle->pData,
                            HID_Handle->length) == USBH_OK)
    {
      
      FUNC5(&HID_Handle->fifo, HID_Handle->pData, HID_Handle->length);  
      HID_Handle->state = HID_SYNC;
    }
    
    break;
    
  case HID_SYNC:

    /* Sync with start of Even Frame */
    if(phost->Timer & 1)
    {
      HID_Handle->state = HID_GET_DATA; 
    }
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_URB_EVENT, 0);
#endif   
    break;
    
  case HID_GET_DATA:

    FUNC3(phost, 
                              HID_Handle->pData,
                              HID_Handle->length,
                              HID_Handle->InPipe);
    
    HID_Handle->state = HID_POLL;
    HID_Handle->timer = phost->Timer;
    HID_Handle->DataReady = 0;
    break;
    
  case HID_POLL:
    
    if(FUNC4(phost , HID_Handle->InPipe) == USBH_URB_DONE)
    {
      if(HID_Handle->DataReady == 0)
      {
        FUNC5(&HID_Handle->fifo, HID_Handle->pData, HID_Handle->length);
        HID_Handle->DataReady = 1;
        FUNC1(phost);
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_URB_EVENT, 0);
#endif          
      }
    }
    else if(FUNC4(phost , HID_Handle->InPipe) == USBH_URB_STALL) /* IN Endpoint Stalled */
    {
      
      /* Issue Clear Feature on interrupt IN endpoint */ 
      if(FUNC0(phost,
                         HID_Handle->ep_addr) == USBH_OK)
      {
        /* Change state to issue next IN token */
        HID_Handle->state = HID_GET_DATA;
      }
    } 
    

    break;
    
  default:
    break;
  }
  return status;
}