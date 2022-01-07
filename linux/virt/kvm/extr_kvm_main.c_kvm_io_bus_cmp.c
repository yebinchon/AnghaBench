
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_io_range {scalar_t__ addr; scalar_t__ len; } ;
typedef scalar_t__ gpa_t ;



__attribute__((used)) static inline int kvm_io_bus_cmp(const struct kvm_io_range *r1,
     const struct kvm_io_range *r2)
{
 gpa_t addr1 = r1->addr;
 gpa_t addr2 = r2->addr;

 if (addr1 < addr2)
  return -1;






 if (r2->len) {
  addr1 += r1->len;
  addr2 += r2->len;
 }

 if (addr1 > addr2)
  return 1;

 return 0;
}
