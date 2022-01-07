
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBM4704_CLOCK_BIT ;
 int IBM4704_CLOCK_DDR ;
 int IBM4704_CLOCK_PORT ;

__attribute__((used)) static inline void clock_hi(void) {

    IBM4704_CLOCK_DDR &= ~(1 << IBM4704_CLOCK_BIT);
    IBM4704_CLOCK_PORT |= (1 << IBM4704_CLOCK_BIT);
}
