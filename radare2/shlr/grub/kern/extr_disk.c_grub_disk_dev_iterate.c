
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* grub_disk_dev_t ;
struct TYPE_3__ {scalar_t__ (* iterate ) (int (*) (char const*,void*),void*) ;struct TYPE_3__* next; } ;


 TYPE_1__* grub_disk_dev_list ;
 scalar_t__ stub1 (int (*) (char const*,void*),void*) ;

int
grub_disk_dev_iterate (int (*hook) (const char *name, void *closure),
         void *closure)
{
  grub_disk_dev_t p;

  for (p = grub_disk_dev_list; p; p = p->next)
    if (p->iterate && (p->iterate) (hook, closure))
      return 1;

  return 0;
}
