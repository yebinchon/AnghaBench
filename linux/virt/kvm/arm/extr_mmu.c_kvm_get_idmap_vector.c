
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int hyp_idmap_vector ;

phys_addr_t kvm_get_idmap_vector(void)
{
 return hyp_idmap_vector;
}
