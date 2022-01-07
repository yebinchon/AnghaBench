
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float uint16_t ;



__attribute__((used)) static uint16_t cie_lightness(uint16_t v) {







    float l = 100.0f * (v / 65535.0f);
    float y = 0.0f;
    if (l <= 8.0f) {
       y = l / 902.3;
    }
    else {
        y = ((l + 16.0f) / 116.0f);
        y = y * y * y;
        if (y > 1.0f) {
            y = 1.0f;
        }
    }
    return y * 65535.0f;
}
