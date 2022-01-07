
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct find_func_closure {scalar_t__ partnum; TYPE_1__* p; } ;
typedef TYPE_1__* grub_partition_t ;
typedef int grub_disk_t ;
struct TYPE_5__ {scalar_t__ number; } ;


 scalar_t__ grub_malloc (int) ;
 int grub_memcpy (TYPE_1__*,TYPE_1__* const,int) ;

__attribute__((used)) static int
find_func (grub_disk_t d ,
    const grub_partition_t partition, void *closure)
{
  struct find_func_closure *c = closure;
  if (c->partnum == partition->number)
    {
      c->p = (grub_partition_t) grub_malloc (sizeof (*c->p));
      if (! c->p)
 return 1;

      grub_memcpy (c->p, partition, sizeof (*c->p));
      return 1;
    }

  return 0;
}
