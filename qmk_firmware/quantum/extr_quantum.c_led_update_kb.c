
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_t ;


 int led_update_user (int ) ;

__attribute__((weak)) bool led_update_kb(led_t led_state) { return led_update_user(led_state); }
