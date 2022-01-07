
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int raise_irq_pri (int) ;

__attribute__((used)) static inline uint32_t disable_irq(void) {
    return raise_irq_pri(15);
}
