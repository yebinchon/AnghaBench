
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_3__ {scalar_t__ ClassNumber; int ** pClass; } ;
typedef TYPE_1__ USBH_HandleTypeDef ;
typedef int USBH_ClassTypeDef ;


 int USBH_ErrLog (char*) ;
 int USBH_FAIL ;
 scalar_t__ USBH_MAX_NUM_SUPPORTED_CLASS ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_RegisterClass(USBH_HandleTypeDef *phost, USBH_ClassTypeDef *pclass)
{
  USBH_StatusTypeDef status = USBH_OK;

  if(pclass != 0)
  {
    if(phost->ClassNumber < USBH_MAX_NUM_SUPPORTED_CLASS)
    {

      phost->pClass[phost->ClassNumber++] = pclass;
      status = USBH_OK;
    }
    else
    {
      USBH_ErrLog("Max Class Number reached");
      status = USBH_FAIL;
    }
  }
  else
  {
    USBH_ErrLog("Invalid Class handle");
    status = USBH_FAIL;
  }

  return status;
}
