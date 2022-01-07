
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M0110_DATA_BIT ;
 int M0110_DATA_DDR ;
 int M0110_DATA_PORT ;

__attribute__((used)) static inline void data_hi() {

    M0110_DATA_DDR &= ~(1 << M0110_DATA_BIT);
    M0110_DATA_PORT |= (1 << M0110_DATA_BIT);
}
