
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_io_bus_cmp (void const*,void const*) ;

__attribute__((used)) static int kvm_io_bus_sort_cmp(const void *p1, const void *p2)
{
 return kvm_io_bus_cmp(p1, p2);
}
