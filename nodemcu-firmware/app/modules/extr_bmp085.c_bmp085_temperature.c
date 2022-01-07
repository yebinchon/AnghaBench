
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int bmp085_temperature_raw_b5 () ;

__attribute__((used)) static int16_t bmp085_temperature(void) {
    return (bmp085_temperature_raw_b5() + 8) >> 4;
}
