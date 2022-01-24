#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_20__ {TYPE_1__* pActiveClass; } ;
typedef  TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_18__ {int /*<<< orphan*/  dwDTERate; int /*<<< orphan*/  bParityType; int /*<<< orphan*/  bDataBits; int /*<<< orphan*/  bCharFormat; } ;
struct TYPE_16__ {TYPE_2__ b; } ;
struct TYPE_21__ {int state; TYPE_10__* pUserLineCoding; TYPE_12__ LineCoding; } ;
struct TYPE_19__ {int /*<<< orphan*/  dwDTERate; int /*<<< orphan*/  bParityType; int /*<<< orphan*/  bDataBits; int /*<<< orphan*/  bCharFormat; } ;
struct TYPE_17__ {TYPE_5__* pData; } ;
struct TYPE_15__ {TYPE_3__ b; } ;
typedef  TYPE_5__ CDC_HandleTypeDef ;

/* Variables and functions */
#define  CDC_ERROR_STATE 132 
#define  CDC_GET_LAST_LINE_CODING_STATE 131 
#define  CDC_IDLE_STATE 130 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
#define  CDC_SET_LINE_CODING_STATE 129 
#define  CDC_TRANSFER_DATA 128 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_10__*) ; 
 int /*<<< orphan*/  USBH_BUSY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  USBH_OK ; 

__attribute__((used)) static USBH_StatusTypeDef FUNC6 (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  USBH_StatusTypeDef req_status = USBH_OK;
  CDC_HandleTypeDef *CDC_Handle =  phost->pActiveClass->pData; 
  
  switch(CDC_Handle->state)
  {
    
  case CDC_IDLE_STATE:
    status = USBH_OK;
    break;
    
  case CDC_SET_LINE_CODING_STATE:
    req_status = FUNC3(phost, CDC_Handle->pUserLineCoding);
    
    if(req_status == USBH_OK)
    {
      CDC_Handle->state = CDC_GET_LAST_LINE_CODING_STATE; 
    }
    
    else if(req_status != USBH_BUSY)
    {
      CDC_Handle->state = CDC_ERROR_STATE; 
    }
    break;
    
    
  case CDC_GET_LAST_LINE_CODING_STATE:
    req_status = FUNC2(phost, &(CDC_Handle->LineCoding));
    
    if(req_status == USBH_OK)
    {
      CDC_Handle->state = CDC_IDLE_STATE; 
      
      if((CDC_Handle->LineCoding.b.bCharFormat == CDC_Handle->pUserLineCoding->b.bCharFormat) && 
         (CDC_Handle->LineCoding.b.bDataBits == CDC_Handle->pUserLineCoding->b.bDataBits) &&
         (CDC_Handle->LineCoding.b.bParityType == CDC_Handle->pUserLineCoding->b.bParityType) &&
         (CDC_Handle->LineCoding.b.dwDTERate == CDC_Handle->pUserLineCoding->b.dwDTERate))
      {
        FUNC4(phost);
      }
    }
    
    else if(req_status != USBH_BUSY)
    {
      CDC_Handle->state = CDC_ERROR_STATE; 
    }   

    break;
    
  case CDC_TRANSFER_DATA:
    FUNC1(phost);
    FUNC0(phost);
    break;   
    
  case CDC_ERROR_STATE:
    req_status = FUNC5(phost, 0x00); 
    
    if(req_status == USBH_OK )
    {        
      /*Change the state to waiting*/
      CDC_Handle->state = CDC_IDLE_STATE ;
    }    
    break;
    
  default:
    break;
    
  }
  
  return status;
}