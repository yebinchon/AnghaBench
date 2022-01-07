
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int NR_PKEYS ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int pkey_assert (int) ;
 int sys_mprotect_pkey (int*,int ,int ,int) ;

void test_pkey_syscalls_bad_args(int *ptr, u16 pkey)
{
 int err;
 int bad_pkey = NR_PKEYS+99;


 err = sys_mprotect_pkey(ptr, PAGE_SIZE, PROT_READ, bad_pkey);
 pkey_assert(err);
}
