
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_bypass_producer {int (* start ) (struct irq_bypass_producer*) ;int (* del_consumer ) (struct irq_bypass_producer*,struct irq_bypass_consumer*) ;int (* stop ) (struct irq_bypass_producer*) ;} ;
struct irq_bypass_consumer {int (* start ) (struct irq_bypass_consumer*) ;int (* del_producer ) (struct irq_bypass_consumer*,struct irq_bypass_producer*) ;int (* stop ) (struct irq_bypass_consumer*) ;} ;


 int stub1 (struct irq_bypass_producer*) ;
 int stub2 (struct irq_bypass_consumer*) ;
 int stub3 (struct irq_bypass_consumer*,struct irq_bypass_producer*) ;
 int stub4 (struct irq_bypass_producer*,struct irq_bypass_consumer*) ;
 int stub5 (struct irq_bypass_consumer*) ;
 int stub6 (struct irq_bypass_producer*) ;

__attribute__((used)) static void __disconnect(struct irq_bypass_producer *prod,
    struct irq_bypass_consumer *cons)
{
 if (prod->stop)
  prod->stop(prod);
 if (cons->stop)
  cons->stop(cons);

 cons->del_producer(cons, prod);

 if (prod->del_consumer)
  prod->del_consumer(prod, cons);

 if (cons->start)
  cons->start(cons);
 if (prod->start)
  prod->start(prod);
}
