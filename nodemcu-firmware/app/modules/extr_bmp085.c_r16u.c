
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int r8u (int ,int) ;

__attribute__((used)) static uint16_t r16u(uint32_t id, uint8_t reg) {
    uint8_t high = r8u(id, reg);
    uint8_t low = r8u(id, reg + 1);
    return (high << 8) | low;
}
