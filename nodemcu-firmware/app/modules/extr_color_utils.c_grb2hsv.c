
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int max3 (int,int,int) ;
 int min3 (int,int,int) ;

uint32_t grb2hsv(uint8_t g, uint8_t r, uint8_t b) {
    uint8_t m = min3(r, g, b);
    uint8_t M = max3(r, g, b);
    uint8_t delta = M - m;

    int hue = 0;
    int saturation = 0;
    int value = 0;

    if(delta == 0) {

        hue = -1;
        saturation = 0;
    } else {
        int h;

        if(r == M)
            h = ((g-b)*60) / delta;
        else if(g == M)
            h = ((b-r)*60) / delta + 120;
        else
            h = ((r-g)*60) / delta + 240;

        if(h < 0)
            h += 360;

        hue = h;





        saturation = (256*delta-8) / M;
    }
    value = M;

    uint32_t result = (hue << 16) | (saturation << 8) | value;
    return result;

}
