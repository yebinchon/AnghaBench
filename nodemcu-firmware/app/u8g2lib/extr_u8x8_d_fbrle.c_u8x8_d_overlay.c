
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8x8_t ;
struct TYPE_3__ {int (* hardware_display_cb ) (int *,int,int,void*) ;} ;
struct TYPE_4__ {TYPE_1__ overlay; } ;
typedef TYPE_2__ u8g2_nodemcu_t ;



 int stub1 (int *,int,int,void*) ;
 int stub2 (int *,int,int,void*) ;
 int u8x8_d_fbrle (int *,int,int,void*) ;

uint8_t u8x8_d_overlay(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
  uint8_t res = 1;
  u8g2_nodemcu_t *ext_u8g2 = (u8g2_nodemcu_t *)u8x8;

  switch(msg)
  {
  case 128:

    if (ext_u8g2->overlay.hardware_display_cb)
      return ext_u8g2->overlay.hardware_display_cb(u8x8, msg, arg_int, arg_ptr);
    break;

  default:

    if (ext_u8g2->overlay.hardware_display_cb)
      res = ext_u8g2->overlay.hardware_display_cb(u8x8, msg, arg_int, arg_ptr);
    u8x8_d_fbrle(u8x8, msg, arg_int, arg_ptr);
    break;
  }

  return res;
}
