
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3218_set_color (int,int ,int ,int ) ;

void IS31FL3218_set_color_all(uint8_t red, uint8_t green, uint8_t blue) {
    for (int i = 0; i < 6; i++) {
        IS31FL3218_set_color(i, red, green, blue);
    }
}
