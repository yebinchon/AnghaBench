
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; int r; int g; } ;
typedef TYPE_1__ LED_TYPE ;


 int BYTES_FOR_LED ;
 int BYTES_FOR_LED_BYTE ;
 int PREAMBLE_SIZE ;
 int get_protocol_eq (int ,int) ;
 int * txbuf ;

void set_led_color_rgb(LED_TYPE color, int pos){
  for(int j = 0; j < 4; j++)
    txbuf[PREAMBLE_SIZE + BYTES_FOR_LED*pos + j] = get_protocol_eq(color.g, j);
  for(int j = 0; j < 4; j++)
    txbuf[PREAMBLE_SIZE + BYTES_FOR_LED*pos + BYTES_FOR_LED_BYTE+j] = get_protocol_eq(color.r, j);
  for(int j = 0; j < 4; j++)
    txbuf[PREAMBLE_SIZE + BYTES_FOR_LED*pos + BYTES_FOR_LED_BYTE*2+j] = get_protocol_eq(color.b, j);
}
