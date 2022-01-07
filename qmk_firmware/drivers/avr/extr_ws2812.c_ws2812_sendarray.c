
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int RGB_DI_PIN ;
 int _BV (int) ;
 int ws2812_sendarray_mask (int *,int ,int ) ;

void ws2812_sendarray(uint8_t *data, uint16_t datlen) { ws2812_sendarray_mask(data, datlen, _BV(RGB_DI_PIN & 0xF)); }
