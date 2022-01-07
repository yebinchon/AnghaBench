
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void const* end; void const* start; } ;
struct fiq_req {scalar_t__ flags; int reg; TYPE_1__ flush; } ;


 scalar_t__ CNS3XXX_FLUSH_RANGE ;
 int FIQ_GENERATE ;
 int barrier () ;
 int cpu_online (int) ;
 int fiq_data ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int smp_mb () ;
 struct fiq_req* this_cpu_ptr (int *) ;
 int v6_dma_flush_range (void const*,void const*) ;
 int writel_relaxed (int ,int ) ;

void fiq_dma_flush_range(const void *start, const void *end)
{
 unsigned long flags;
 struct fiq_req *req;

 raw_local_irq_save(flags);

 if (!cpu_online(1)) {
  raw_local_irq_restore(flags);
  v6_dma_flush_range(start, end);
  return;
 }

 req = this_cpu_ptr(&fiq_data);

 req->flush.start = start;
 req->flush.end = end;
 req->flags = CNS3XXX_FLUSH_RANGE;
 smp_mb();

 writel_relaxed(FIQ_GENERATE, req->reg);

 v6_dma_flush_range(start, end);

 while (req->flags)
  barrier();

 raw_local_irq_restore(flags);
}
