
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_6__ {int speed; int address; scalar_t__* Data; } ;
struct TYPE_5__ {scalar_t__ errorcount; int pipe_size; int state; } ;
struct TYPE_7__ {TYPE_2__ device; TYPE_1__ Control; scalar_t__ Timer; int RequestState; int EnumState; int gState; scalar_t__* Pipes; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;


 int CMD_SEND ;
 int CTRL_SETUP ;
 int ENUM_IDLE ;
 int HOST_IDLE ;
 int USBH_ADDRESS_DEFAULT ;
 size_t USBH_MAX_DATA_BUFFER ;
 size_t USBH_MAX_PIPES_NBR ;
 int USBH_MPS_DEFAULT ;
 int USBH_OK ;
 int USBH_SPEED_FULL ;

__attribute__((used)) static USBH_StatusTypeDef DeInitStateMachine(USBH_HandleTypeDef *phost)
{
  uint32_t i = 0;


  for ( ; i < USBH_MAX_PIPES_NBR; i++)
  {
    phost->Pipes[i] = 0;
  }

  for(i = 0; i< USBH_MAX_DATA_BUFFER; i++)
  {
    phost->device.Data[i] = 0;
  }

  phost->gState = HOST_IDLE;
  phost->EnumState = ENUM_IDLE;
  phost->RequestState = CMD_SEND;
  phost->Timer = 0;

  phost->Control.state = CTRL_SETUP;
  phost->Control.pipe_size = USBH_MPS_DEFAULT;
  phost->Control.errorcount = 0;

  phost->device.address = USBH_ADDRESS_DEFAULT;
  phost->device.speed = USBH_SPEED_FULL;

  return USBH_OK;
}
