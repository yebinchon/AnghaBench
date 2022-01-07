
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3218_set_color (int,int ,int ,int ) ;
 int IS31FL3731_set_color (int,int ,int ,int ) ;
 int IS31FL3733_set_color (int,int ,int ,int ) ;

void backlight_set_color( int index, uint8_t red, uint8_t green, uint8_t blue )
{





    IS31FL3731_set_color( index, red, green, blue );

}
