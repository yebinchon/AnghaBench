
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ local_page ;
 scalar_t__ local_size ;
 int mach_task_self () ;
 int mach_vm_deallocate (int ,scalar_t__,scalar_t__) ;
 scalar_t__ target_page_base ;

__attribute__((used)) static void fpm_mach_vm_deallocate()
{
 if (local_page) {
  mach_vm_deallocate(mach_task_self(), local_page, local_size);
  target_page_base = 0;
  local_page = 0;
  local_size = 0;
 }
}
