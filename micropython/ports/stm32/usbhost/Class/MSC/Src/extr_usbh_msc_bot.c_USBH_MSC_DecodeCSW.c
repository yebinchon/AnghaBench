
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_7__ USBH_HandleTypeDef ;
struct TYPE_14__ {scalar_t__ Signature; scalar_t__ Tag; int Status; } ;
struct TYPE_15__ {TYPE_4__ field; } ;
struct TYPE_12__ {scalar_t__ Tag; } ;
struct TYPE_13__ {TYPE_2__ field; } ;
struct TYPE_16__ {TYPE_5__ csw; TYPE_3__ cbw; } ;
struct TYPE_18__ {TYPE_6__ hbot; int InPipe; } ;
struct TYPE_11__ {TYPE_8__* pData; } ;
typedef TYPE_8__ MSC_HandleTypeDef ;
typedef int BOT_CSWStatusTypeDef ;


 int BOT_CSW_CMD_FAILED ;
 int BOT_CSW_CMD_PASSED ;
 scalar_t__ BOT_CSW_LENGTH ;
 int BOT_CSW_PHASE_ERROR ;
 scalar_t__ BOT_CSW_SIGNATURE ;
 scalar_t__ USBH_LL_GetLastXferSize (TYPE_7__*,int ) ;

__attribute__((used)) static BOT_CSWStatusTypeDef USBH_MSC_DecodeCSW(USBH_HandleTypeDef *phost)
{
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;
  BOT_CSWStatusTypeDef status = BOT_CSW_CMD_FAILED;


    if(USBH_LL_GetLastXferSize(phost, MSC_Handle->InPipe) != BOT_CSW_LENGTH)
    {
      status = BOT_CSW_PHASE_ERROR;
    }
    else
    {


      if(MSC_Handle->hbot.csw.field.Signature == BOT_CSW_SIGNATURE)
      {

        if(MSC_Handle->hbot.csw.field.Tag == MSC_Handle->hbot.cbw.field.Tag)
        {



          if(MSC_Handle->hbot.csw.field.Status == 0)
          {
            status = BOT_CSW_CMD_PASSED;
          }
          else if(MSC_Handle->hbot.csw.field.Status == 1)
          {
            status = BOT_CSW_CMD_FAILED;
          }

          else if(MSC_Handle->hbot.csw.field.Status == 2)
          {
            status = BOT_CSW_PHASE_ERROR;
          }
        }
      }
      else
      {



        status = BOT_CSW_PHASE_ERROR;
      }
    }

  return status;
}
