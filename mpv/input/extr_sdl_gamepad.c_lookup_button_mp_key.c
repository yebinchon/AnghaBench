
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INVALID_KEY ;
 int MP_ARRAY_SIZE (int**) ;
 int** button_map ;

__attribute__((used)) static int lookup_button_mp_key(int sdl_key)
{
    for (int i = 0; i < MP_ARRAY_SIZE(button_map); i++) {
        if (button_map[i][0] == sdl_key) {
            return button_map[i][1];
        }
    }
    return INVALID_KEY;
}
