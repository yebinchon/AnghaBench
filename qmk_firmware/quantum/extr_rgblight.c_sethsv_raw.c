
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int member_2; int member_1; int member_0; } ;
struct TYPE_5__ {int b; int g; int r; } ;
typedef TYPE_1__ RGB ;
typedef int LED_TYPE ;
typedef TYPE_2__ HSV ;


 TYPE_1__ hsv_to_rgb (TYPE_2__) ;
 int setrgb (int ,int ,int ,int *) ;

void sethsv_raw(uint8_t hue, uint8_t sat, uint8_t val, LED_TYPE *led1) {
    HSV hsv = {hue, sat, val};
    RGB rgb = hsv_to_rgb(hsv);
    setrgb(rgb.r, rgb.g, rgb.b, led1);
}
