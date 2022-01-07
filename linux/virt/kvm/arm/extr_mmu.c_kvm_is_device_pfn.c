
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pfn_valid (unsigned long) ;

__attribute__((used)) static bool kvm_is_device_pfn(unsigned long pfn)
{
 return !pfn_valid(pfn);
}
