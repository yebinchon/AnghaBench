
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ CR1; } ;
typedef TYPE_1__ i2c_slave_t ;


 int NVIC_DisableIRQ (int) ;

__attribute__((used)) static inline void i2c_slave_shutdown(i2c_slave_t *i2c, int irqn) {
    i2c->CR1 = 0;
    NVIC_DisableIRQ(irqn);
}
