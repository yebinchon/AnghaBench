
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_3__ {scalar_t__ w; void* b; void* g; void* r; } ;
typedef TYPE_1__ LED_TYPE ;



void setrgb(uint8_t r, uint8_t g, uint8_t b, LED_TYPE *led1) {
    (*led1).r = r;
    (*led1).g = g;
    (*led1).b = b;



}
