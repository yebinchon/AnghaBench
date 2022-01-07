
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {unsigned long alloc_fastpath; unsigned long free_fastpath; unsigned long alloc_slowpath; unsigned long free_slowpath; } ;



__attribute__((used)) static unsigned long slab_activity(struct slabinfo *s)
{
 return s->alloc_fastpath + s->free_fastpath +
  s->alloc_slowpath + s->free_slowpath;
}
