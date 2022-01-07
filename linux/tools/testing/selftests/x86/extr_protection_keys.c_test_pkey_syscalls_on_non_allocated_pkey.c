
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int NR_PKEYS ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int dprintf1 (char*,int) ;
 int pkey_assert (int) ;
 int sys_mprotect_pkey (int*,int ,int ,int) ;
 int sys_pkey_free (int) ;

void test_pkey_syscalls_on_non_allocated_pkey(int *ptr, u16 pkey)
{
 int err;
 int i;


 for (i = 1; i < NR_PKEYS; i++) {
  if (pkey == i)
   continue;

  dprintf1("trying get/set/free to non-allocated pkey: %2d\n", i);
  err = sys_pkey_free(i);
  pkey_assert(err);

  err = sys_pkey_free(i);
  pkey_assert(err);

  err = sys_mprotect_pkey(ptr, PAGE_SIZE, PROT_READ, i);
  pkey_assert(err);
 }
}
