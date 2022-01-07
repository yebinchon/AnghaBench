
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int BUG_ON (int ) ;
 int PAGE_HYP_EXEC ;
 int __create_hyp_private_mapping (int ,size_t,unsigned long*,int ) ;
 int is_kernel_in_hyp_mode () ;

int create_hyp_exec_mappings(phys_addr_t phys_addr, size_t size,
        void **haddr)
{
 unsigned long addr;
 int ret;

 BUG_ON(is_kernel_in_hyp_mode());

 ret = __create_hyp_private_mapping(phys_addr, size,
        &addr, PAGE_HYP_EXEC);
 if (ret) {
  *haddr = ((void*)0);
  return ret;
 }

 *haddr = (void *)addr;
 return 0;
}
