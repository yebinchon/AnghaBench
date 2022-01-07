
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ BSRR; } ;
typedef TYPE_1__ GPIO_TypeDef ;



__attribute__((used)) static inline void GPIO_HIGH(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
       GPIOx->BSRR = (uint32_t)GPIO_Pin;
}
