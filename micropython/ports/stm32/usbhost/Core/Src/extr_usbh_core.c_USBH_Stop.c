
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_7__ {int pipe_out; int pipe_in; } ;
struct TYPE_8__ {TYPE_1__ Control; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;


 int FALSE ;
 int USBH_FreePipe (TYPE_2__*,int ) ;
 int USBH_LL_DriverVBUS (TYPE_2__*,int ) ;
 int USBH_LL_Stop (TYPE_2__*) ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_Stop (USBH_HandleTypeDef *phost)
{

  USBH_LL_Stop(phost);


  USBH_LL_DriverVBUS (phost, FALSE);


  USBH_FreePipe (phost, phost->Control.pipe_in);
  USBH_FreePipe (phost, phost->Control.pipe_out);

  return USBH_OK;
}
