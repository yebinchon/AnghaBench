
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct cns3xxx_gpio_chip {int domain; scalar_t__ base; } ;


 scalar_t__ GPIO_INTERRUPT_RAW_STATUS ;
 int __raw_readl (scalar_t__) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct cns3xxx_gpio_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,int) ;

__attribute__((used)) static void cns3xxx_gpio_irq_handler(struct irq_desc *desc)
{
 struct cns3xxx_gpio_chip *cchip = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 u16 i;
 u32 reg;

 chained_irq_enter(chip, desc);


 reg = __raw_readl(cchip->base + GPIO_INTERRUPT_RAW_STATUS);
 for (i = 0; i < 32; i++) {
  if (reg & (1 << i)) {

   generic_handle_irq(irq_find_mapping(cchip->domain, i));
  }
 }

 chained_irq_exit(chip, desc);
}
