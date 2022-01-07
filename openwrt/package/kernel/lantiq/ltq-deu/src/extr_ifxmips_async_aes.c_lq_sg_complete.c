
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aes_container {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__* aes_queue ;
 int kfree (struct aes_container*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lq_sg_complete(struct aes_container *aes_con)
{
    unsigned long queue_flag;

    spin_lock_irqsave(&aes_queue->lock, queue_flag);
    kfree(aes_con);
    spin_unlock_irqrestore(&aes_queue->lock, queue_flag);
}
