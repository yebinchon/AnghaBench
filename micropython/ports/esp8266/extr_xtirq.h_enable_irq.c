
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int restore_irq_pri (int ) ;

__attribute__((used)) static inline void enable_irq(uint32_t irq_state) {
    restore_irq_pri(irq_state);
}
