
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsw_mt753x {int irq_worker; int irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t mt753x_irq_handler(int irq, void *dev)
{
 struct gsw_mt753x *gsw = dev;

 disable_irq_nosync(gsw->irq);

 schedule_work(&gsw->irq_worker);

 return IRQ_HANDLED;
}
