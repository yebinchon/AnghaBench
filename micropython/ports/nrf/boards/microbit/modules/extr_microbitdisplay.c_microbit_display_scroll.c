
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;
typedef int microbit_display_obj_t ;


 int DEFAULT_SCROLL_SPEED ;
 int microbit_display_animate (int *,int ,int ,int,int) ;
 int scrolling_string_image_iterable (char const*,int ,int *,int,int) ;
 int strlen (char const*) ;

void microbit_display_scroll(microbit_display_obj_t *self, const char* str, bool wait) {
    mp_obj_t iterable = scrolling_string_image_iterable(str, strlen(str), ((void*)0), 0, 0);
    microbit_display_animate(self, iterable, DEFAULT_SCROLL_SPEED, 0, wait);
}
