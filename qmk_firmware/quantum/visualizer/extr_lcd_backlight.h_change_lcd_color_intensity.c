
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t change_lcd_color_intensity(uint32_t color, uint8_t new_intensity) { return (color & 0xFFFFFF00) | new_intensity; }
