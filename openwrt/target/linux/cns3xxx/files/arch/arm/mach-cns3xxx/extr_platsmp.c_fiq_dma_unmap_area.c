
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; void const* addr; } ;
struct fiq_req {int flags; int reg; TYPE_1__ unmap; } ;


 int CNS3XXX_UNMAP_AREA ;
 int FIQ_GENERATE ;
 int barrier () ;
 int cpu_online (int) ;
 int fiq_data ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int smp_mb () ;
 struct fiq_req* this_cpu_ptr (int *) ;
 int v6_dma_unmap_area (void const*,size_t,int) ;
 int writel_relaxed (int ,int ) ;

void fiq_dma_unmap_area(const void *addr, size_t size, int dir)
{
 unsigned long flags;
 struct fiq_req *req;

 raw_local_irq_save(flags);

 if (!cpu_online(1)) {
  raw_local_irq_restore(flags);
  v6_dma_unmap_area(addr, size, dir);
  return;
 }

 req = this_cpu_ptr(&fiq_data);
 req->unmap.addr = addr;
 req->unmap.size = size;
 req->flags = dir | CNS3XXX_UNMAP_AREA;
 smp_mb();

 writel_relaxed(FIQ_GENERATE, req->reg);

 v6_dma_unmap_area(addr, size, dir);
 while (req->flags)
  barrier();

 raw_local_irq_restore(flags);
}
