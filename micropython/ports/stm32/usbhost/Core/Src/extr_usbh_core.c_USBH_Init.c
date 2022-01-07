
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_8__ {void (* pUser ) (TYPE_1__*,int ) ;int thread; int os_event; scalar_t__ ClassNumber; int * pActiveClass; int id; } ;
typedef TYPE_1__ USBH_HandleTypeDef ;


 int DeInitStateMachine (TYPE_1__*) ;
 int USBH_ErrLog (char*) ;
 int USBH_FAIL ;
 int USBH_LL_Init (TYPE_1__*) ;
 int USBH_OK ;
 int USBH_PROCESS_PRIO ;
 int USBH_Process_OS ;
 int USBH_Queue ;
 int USBH_Thread ;
 int configMINIMAL_STACK_SIZE ;
 int osMessageCreate (int ,int *) ;
 int osMessageQ (int ) ;
 int osMessageQDef (int ,int,int ) ;
 int osThread (int ) ;
 int osThreadCreate (int ,TYPE_1__*) ;
 int osThreadDef (int ,int ,int ,int ,int) ;
 int uint16_t ;

USBH_StatusTypeDef USBH_Init(USBH_HandleTypeDef *phost, void (*pUsrFunc)(USBH_HandleTypeDef *phost, uint8_t ), uint8_t id)
{

  if(phost == ((void*)0))
  {
    USBH_ErrLog("Invalid Host handle");
    return USBH_FAIL;
  }


  phost->id = id;


  phost->pActiveClass = ((void*)0);
  phost->ClassNumber = 0;


  DeInitStateMachine(phost);


  if(pUsrFunc != ((void*)0))
  {
    phost->pUser = pUsrFunc;
  }
  USBH_LL_Init(phost);
  return USBH_OK;
}
