
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M0110_CLOCK_BIT ;
 int M0110_CLOCK_DDR ;
 int M0110_CLOCK_PORT ;

__attribute__((used)) static inline void clock_lo() {
    M0110_CLOCK_PORT &= ~(1 << M0110_CLOCK_BIT);
    M0110_CLOCK_DDR |= (1 << M0110_CLOCK_BIT);
}
