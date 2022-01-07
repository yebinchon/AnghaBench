
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RGB_DI_PIN ;
 int setPinOutput (int ) ;

void ws2812_init(void) { setPinOutput(RGB_DI_PIN); }
