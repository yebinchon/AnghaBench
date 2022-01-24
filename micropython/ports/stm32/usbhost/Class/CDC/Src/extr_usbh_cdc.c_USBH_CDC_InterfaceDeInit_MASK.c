#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_13__ {TYPE_3__* pActiveClass; } ;
typedef  TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_11__ {scalar_t__ OutPipe; scalar_t__ InPipe; } ;
struct TYPE_10__ {scalar_t__ NotifPipe; } ;
struct TYPE_14__ {TYPE_2__ DataItf; TYPE_1__ CommItf; } ;
struct TYPE_12__ {TYPE_5__* pData; } ;
typedef  TYPE_5__ CDC_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  USBH_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 

USBH_StatusTypeDef FUNC3 (USBH_HandleTypeDef *phost)
{
  CDC_HandleTypeDef *CDC_Handle =  phost->pActiveClass->pData;
  
  if ( CDC_Handle->CommItf.NotifPipe)
  {
    FUNC0(phost, CDC_Handle->CommItf.NotifPipe);
    FUNC1  (phost, CDC_Handle->CommItf.NotifPipe);
    CDC_Handle->CommItf.NotifPipe = 0;     /* Reset the Channel as Free */
  }
  
  if ( CDC_Handle->DataItf.InPipe)
  {
    FUNC0(phost, CDC_Handle->DataItf.InPipe);
    FUNC1  (phost, CDC_Handle->DataItf.InPipe);
    CDC_Handle->DataItf.InPipe = 0;     /* Reset the Channel as Free */
  }
  
  if ( CDC_Handle->DataItf.OutPipe)
  {
    FUNC0(phost, CDC_Handle->DataItf.OutPipe);
    FUNC1  (phost, CDC_Handle->DataItf.OutPipe);
    CDC_Handle->DataItf.OutPipe = 0;     /* Reset the Channel as Free */
  } 
  
  if(phost->pActiveClass->pData)
  {
    FUNC2 (phost->pActiveClass->pData);
    phost->pActiveClass->pData = 0;
  }
   
  return USBH_OK;
}