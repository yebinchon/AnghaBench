
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b; int g; int r; } ;
typedef TYPE_1__ LED_TYPE ;



void copyrgb(LED_TYPE *src, LED_TYPE *dst) {
  (*dst).r = (*src).r;
  (*dst).g = (*src).g;
  (*dst).b = (*src).b;
}
