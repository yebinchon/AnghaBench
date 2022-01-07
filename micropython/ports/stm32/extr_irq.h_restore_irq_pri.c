
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int enable_irq (int ) ;

__attribute__((used)) static inline void restore_irq_pri(uint32_t state) {
    enable_irq(state);
}
