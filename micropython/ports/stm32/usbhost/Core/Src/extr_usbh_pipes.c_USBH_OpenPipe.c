
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBH_StatusTypeDef ;
typedef int USBH_HandleTypeDef ;


 int USBH_LL_OpenPipe (int *,int ,int ,int ,int ,int ,int ) ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_OpenPipe (USBH_HandleTypeDef *phost,
                            uint8_t pipe_num,
                            uint8_t epnum,
                            uint8_t dev_address,
                            uint8_t speed,
                            uint8_t ep_type,
                            uint16_t mps)
{

  USBH_LL_OpenPipe(phost,
                        pipe_num,
                        epnum,
                        dev_address,
                        speed,
                        ep_type,
                        mps);

  return USBH_OK;

}
