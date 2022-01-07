
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* usbd_device_desc; } ;
typedef TYPE_1__ usbd_cdc_msc_hid_state_t ;
typedef int uint8_t ;
typedef int uint16_t ;


 int HIBYTE (int ) ;
 int LOBYTE (int ) ;
 int USBD_IDX_MFC_STR ;
 int USBD_IDX_PRODUCT_STR ;
 int USBD_IDX_SERIAL_STR ;
 int USBD_MAX_NUM_CONFIGURATION ;
 int USB_DESC_TYPE_DEVICE ;
 int USB_LEN_DEV_DESC ;
 int USB_MAX_EP0_SIZE ;

void USBD_SetVIDPIDRelease(usbd_cdc_msc_hid_state_t *usbd, uint16_t vid, uint16_t pid, uint16_t device_release_num, int cdc_only) {
    uint8_t *dev_desc = &usbd->usbd_device_desc[0];

    dev_desc[0] = USB_LEN_DEV_DESC;
    dev_desc[1] = USB_DESC_TYPE_DEVICE;
    dev_desc[2] = 0x00;
    dev_desc[3] = 0x02;
    if (cdc_only) {



        dev_desc[4] = 0x02;
        dev_desc[5] = 0x00;
        dev_desc[6] = 0x00;
    } else {

        dev_desc[4] = 0xef;
        dev_desc[5] = 0x02;
        dev_desc[6] = 0x01;
    }
    dev_desc[7] = USB_MAX_EP0_SIZE;
    dev_desc[8] = LOBYTE(vid);
    dev_desc[9] = HIBYTE(vid);
    dev_desc[10] = LOBYTE(pid);
    dev_desc[11] = HIBYTE(pid);
    dev_desc[12] = LOBYTE(device_release_num);
    dev_desc[13] = HIBYTE(device_release_num);
    dev_desc[14] = USBD_IDX_MFC_STR;
    dev_desc[15] = USBD_IDX_PRODUCT_STR;
    dev_desc[16] = USBD_IDX_SERIAL_STR;
    dev_desc[17] = USBD_MAX_NUM_CONFIGURATION;
}
