
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ws2801_byte (int ) ;

__attribute__((used)) static void ws2801_color(uint8_t r, uint8_t g, uint8_t b) {
    ws2801_byte(r);
    ws2801_byte(g);
    ws2801_byte(b);
}
