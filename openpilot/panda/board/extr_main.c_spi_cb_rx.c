
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int USB_Setup_TypeDef ;


 int UNUSED (int) ;
 int puts (char*) ;
 int usb_cb_control_msg (int *,int*,int ) ;
 int usb_cb_ep1_in (int*,int,int ) ;
 int usb_cb_ep2_out (int*,int,int ) ;
 int usb_cb_ep3_out (int*,int,int ) ;

int spi_cb_rx(uint8_t *data, int len, uint8_t *data_out) {



  UNUSED(len);
  int resp_len = 0;
  switch (data[0]) {
    case 0:

      resp_len = usb_cb_control_msg((USB_Setup_TypeDef *)(data+4), data_out, 0);
      break;
    case 1:

      resp_len = usb_cb_ep1_in(data_out, 0x40, 0);
      break;
    case 2:

      usb_cb_ep2_out(data+4, data[2], 0);
      break;
    case 3:

      usb_cb_ep3_out(data+4, data[2], 0);
      break;
    default:
      puts("SPI data invalid");
      break;
  }
  return resp_len;
}
