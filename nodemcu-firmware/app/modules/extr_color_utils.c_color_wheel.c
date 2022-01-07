
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int hsv2grb (int ,int,int) ;

uint32_t color_wheel(uint16_t pos) {
  return hsv2grb(pos, 255, 255);
}
