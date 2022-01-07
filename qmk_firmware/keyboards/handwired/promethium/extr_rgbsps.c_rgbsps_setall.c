
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ RGBSPS_NUM ;
 int rgbsps_set (scalar_t__,int ,int ,int ) ;

void rgbsps_setall(uint8_t r, uint8_t g, uint8_t b) {
  for (uint16_t i = 0; i < RGBSPS_NUM; i++) {
    rgbsps_set(i, r, g, b);
  }
}
