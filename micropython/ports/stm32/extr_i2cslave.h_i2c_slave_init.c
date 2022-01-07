
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int i2c_slave_t ;
struct TYPE_2__ {int APB1ENR; int APB1LENR; } ;


 uintptr_t I2C1_BASE ;
 uintptr_t I2C2_BASE ;
 int NVIC_EnableIRQ (int) ;
 int NVIC_SetPriority (int,int) ;
 TYPE_1__* RCC ;
 int RCC_APB1ENR_I2C1EN_Pos ;
 int RCC_APB1LENR_I2C1EN_Pos ;
 int i2c_slave_init_helper (int *,int) ;

__attribute__((used)) static inline void i2c_slave_init(i2c_slave_t *i2c, int irqn, int irq_pri, int addr) {
    int i2c_idx = ((uintptr_t)i2c - I2C1_BASE) / (I2C2_BASE - I2C1_BASE);
    i2c_slave_init_helper(i2c, addr);

    NVIC_SetPriority(irqn, irq_pri);
    NVIC_EnableIRQ(irqn);
}
