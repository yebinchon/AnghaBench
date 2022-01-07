
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _COLEMAK ;
 int backlight_level (int ) ;
 int isGame ;
 int set_single_persistent_default_layer (int ) ;

void matrix_init_user(void) {
 set_single_persistent_default_layer(_COLEMAK);
 isGame = 0;



}
