
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {size_t r; size_t g; size_t b; } ;


 TYPE_1__* led ;

void rgbsps_set(uint8_t index, uint8_t r, uint8_t g, uint8_t b) {
  led[index].r = r;
  led[index].g = g;
  led[index].b = b;
}
