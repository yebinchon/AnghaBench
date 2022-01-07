
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {unsigned long amr1; unsigned long amr2; unsigned long amr3; unsigned long expected_iamr; unsigned long expected_uamor; unsigned long new_iamr; unsigned long new_uamor; int child_sync; } ;


 int CHILD_FAIL_IF (int,int *) ;
 int PKEY_DISABLE_EXECUTE ;
 int SPRN_AMR ;
 int TEST_PASS ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;
 unsigned long pkeyshift (int) ;
 int printf (char*,char*,unsigned long,...) ;
 int prod_parent (int *) ;
 int sys_pkey_alloc (int ,int ) ;
 int sys_pkey_free (int) ;
 char* user_read ;
 char* user_write ;
 int wait_parent (int *) ;

__attribute__((used)) static int child(struct shared_info *info)
{
 unsigned long reg;
 bool disable_execute = 1;
 int pkey1, pkey2, pkey3;
 int ret;


 ret = wait_parent(&info->child_sync);
 if (ret)
  return ret;


 pkey1 = sys_pkey_alloc(0, PKEY_DISABLE_EXECUTE);
 if (pkey1 < 0) {
  pkey1 = sys_pkey_alloc(0, 0);
  CHILD_FAIL_IF(pkey1 < 0, &info->child_sync);

  disable_execute = 0;
 }

 pkey2 = sys_pkey_alloc(0, 0);
 CHILD_FAIL_IF(pkey2 < 0, &info->child_sync);

 pkey3 = sys_pkey_alloc(0, 0);
 CHILD_FAIL_IF(pkey3 < 0, &info->child_sync);

 info->amr1 |= 3ul << pkeyshift(pkey1);
 info->amr2 |= 3ul << pkeyshift(pkey2);
 info->amr3 |= info->amr2 | 3ul << pkeyshift(pkey3);

 if (disable_execute)
  info->expected_iamr |= 1ul << pkeyshift(pkey1);
 else
  info->expected_iamr &= ~(1ul << pkeyshift(pkey1));

 info->expected_iamr &= ~(1ul << pkeyshift(pkey2) | 1ul << pkeyshift(pkey3));

 info->expected_uamor |= 3ul << pkeyshift(pkey1) |
    3ul << pkeyshift(pkey2);
 info->new_iamr |= 1ul << pkeyshift(pkey1) | 1ul << pkeyshift(pkey2);
 info->new_uamor |= 3ul << pkeyshift(pkey1);
 sys_pkey_free(pkey3);

 printf("%-30s AMR: %016lx pkey1: %d pkey2: %d pkey3: %d\n",
        user_write, info->amr1, pkey1, pkey2, pkey3);

 mtspr(SPRN_AMR, info->amr1);


 ret = prod_parent(&info->child_sync);
 CHILD_FAIL_IF(ret, &info->child_sync);

 ret = wait_parent(&info->child_sync);
 if (ret)
  return ret;

 reg = mfspr(SPRN_AMR);

 printf("%-30s AMR: %016lx\n", user_read, reg);

 CHILD_FAIL_IF(reg != info->amr2, &info->child_sync);




 ret = prod_parent(&info->child_sync);
 CHILD_FAIL_IF(ret, &info->child_sync);

 ret = wait_parent(&info->child_sync);
 if (ret)
  return ret;

 reg = mfspr(SPRN_AMR);

 printf("%-30s AMR: %016lx\n", user_read, reg);

 CHILD_FAIL_IF(reg != info->amr2, &info->child_sync);





 ret = prod_parent(&info->child_sync);
 CHILD_FAIL_IF(ret, &info->child_sync);

 ret = wait_parent(&info->child_sync);
 if (ret)
  return ret;

 reg = mfspr(SPRN_AMR);

 printf("%-30s AMR: %016lx\n", user_read, reg);

 CHILD_FAIL_IF(reg != info->amr2, &info->child_sync);



 ret = prod_parent(&info->child_sync);
 CHILD_FAIL_IF(ret, &info->child_sync);

 return TEST_PASS;
}
