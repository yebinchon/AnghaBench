
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int disable_irq () ;

__attribute__((used)) static inline uint32_t raise_irq_pri(uint32_t pri) {
    return disable_irq();
}
