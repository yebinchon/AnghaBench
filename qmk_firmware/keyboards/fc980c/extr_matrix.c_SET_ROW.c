
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTD ;

__attribute__((used)) static inline void SET_ROW(uint8_t ROW)
{

    PORTD = (PORTD & 0x8F) | ((ROW & 0x07) << 4);
}
