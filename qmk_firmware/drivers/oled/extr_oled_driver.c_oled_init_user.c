
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oled_rotation_t ;



__attribute__((weak)) oled_rotation_t oled_init_user(oled_rotation_t rotation) { return rotation; }
