
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_device_iterate_closure {int (* hook ) (char const*,void*) ;void* closure; } ;


 int grub_disk_dev_iterate (int ,struct grub_device_iterate_closure*) ;
 int iterate_disk ;

int
grub_device_iterate (int (*hook) (const char *name, void *closure),
       void *closure)
{
  struct grub_device_iterate_closure c;

  c.hook = hook;
  c.closure = closure;

  return grub_disk_dev_iterate (iterate_disk, &c);
}
