
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int ZLOG_ERROR ;
 int fpm_pagesize ;
 int local_page ;
 int local_size ;
 int mach_error_string (scalar_t__) ;
 scalar_t__ mach_vm_read (int ,int ,int ,int *,int *) ;
 int target ;
 int zlog (int ,char*,int ,scalar_t__) ;

__attribute__((used)) static int fpm_mach_vm_read_page(vm_offset_t page)
{
 kern_return_t kr;

 kr = mach_vm_read(target, page, fpm_pagesize, &local_page, &local_size);
 if (kr != KERN_SUCCESS) {
  zlog(ZLOG_ERROR, "failed to read vm page: mach_vm_read(): %s (%d)", mach_error_string(kr), kr);
  return -1;
 }
 return 0;
}
