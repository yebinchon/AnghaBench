
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXT_KBD_OUT_BIT ;
 int NEXT_KBD_OUT_DDR ;
 int NEXT_KBD_OUT_PORT ;

__attribute__((used)) static inline void out_lo(void) {
    NEXT_KBD_OUT_PORT &= ~(1 << NEXT_KBD_OUT_BIT);
    NEXT_KBD_OUT_DDR |= (1 << NEXT_KBD_OUT_BIT);
}
