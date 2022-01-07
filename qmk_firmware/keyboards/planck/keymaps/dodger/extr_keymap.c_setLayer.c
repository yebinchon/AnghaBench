
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLAY_SONG (int ) ;
 int _COLEMAK ;
 int _GAME ;
 int _MUSIC ;
 int backlight_set (int) ;
 int guitar ;
 int mario ;
 int marioe ;
 int set_single_persistent_default_layer (int) ;
 int stop_all_notes () ;

void setLayer(int layer) {
    if (layer == _COLEMAK) {




        set_single_persistent_default_layer(_COLEMAK);



    } else if (layer == _GAME) {




        set_single_persistent_default_layer(_GAME);



    } else if (layer == _MUSIC) {




        set_single_persistent_default_layer(_MUSIC);



    }
}
