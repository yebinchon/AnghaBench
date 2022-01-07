
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* int16_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_7__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_9__ {void** buttons; void* y; void* x; } ;
struct TYPE_8__ {scalar_t__ length; int fifo; } ;
struct TYPE_6__ {TYPE_3__* pData; } ;
typedef int HID_Report_ItemTypedef ;
typedef TYPE_3__ HID_HandleTypeDef ;


 scalar_t__ HID_ReadItem (int *,int ) ;
 int USBH_FAIL ;
 int USBH_OK ;
 scalar_t__ fifo_read (int *,int *,scalar_t__) ;
 TYPE_4__ mouse_info ;
 int mouse_report_data ;
 int prop_b1 ;
 int prop_b2 ;
 int prop_b3 ;
 int prop_x ;
 int prop_y ;

__attribute__((used)) static USBH_StatusTypeDef USBH_HID_MouseDecode(USBH_HandleTypeDef *phost)
{
  HID_HandleTypeDef *HID_Handle = phost->pActiveClass->pData;

  if(HID_Handle->length == 0)
  {
    return USBH_FAIL;
  }

  if(fifo_read(&HID_Handle->fifo, &mouse_report_data, HID_Handle->length) == HID_Handle->length)
  {


    mouse_info.x = (int16_t )HID_ReadItem((HID_Report_ItemTypedef *) &prop_x, 0);
    mouse_info.y = (int16_t )HID_ReadItem((HID_Report_ItemTypedef *) &prop_y, 0);

    mouse_info.buttons[0]=(uint8_t)HID_ReadItem((HID_Report_ItemTypedef *) &prop_b1, 0);
    mouse_info.buttons[1]=(uint8_t)HID_ReadItem((HID_Report_ItemTypedef *) &prop_b2, 0);
    mouse_info.buttons[2]=(uint8_t)HID_ReadItem((HID_Report_ItemTypedef *) &prop_b3, 0);

    return USBH_OK;
  }
  return USBH_FAIL;
}
