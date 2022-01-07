
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int16_t ;


 int r16u (int ,int ) ;

__attribute__((used)) static int16_t r16(uint32_t id, uint8_t reg) {
    return (int16_t) r16u(id, reg);
}
