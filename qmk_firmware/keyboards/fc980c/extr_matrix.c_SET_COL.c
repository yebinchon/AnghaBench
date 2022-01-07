
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTB ;

__attribute__((used)) static inline void SET_COL(uint8_t COL)
{

    PORTB = (PORTB & 0xF0) | (COL & 0x0F);
}
