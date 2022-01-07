
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {unsigned long amr; unsigned long iamr; unsigned long uamor; int core_time; int child_sync; } ;


 int FAIL_IF (int) ;
 int PKEY_DISABLE_EXECUTE ;
 int SPRN_AMR ;
 int TEST_FAIL ;
 int increase_core_file_limit () ;
 int mtspr (int ,unsigned long) ;
 unsigned long pkeyshift (int) ;
 int printf (char*,char*,unsigned long,int,int,int) ;
 int sys_pkey_alloc (int ,int ) ;
 int sys_pkey_free (int) ;
 int time (int *) ;
 char* user_write ;
 int wait_parent (int *) ;

__attribute__((used)) static int child(struct shared_info *info)
{
 bool disable_execute = 1;
 int pkey1, pkey2, pkey3;
 int *ptr, ret;


 ret = wait_parent(&info->child_sync);
 if (ret)
  return ret;

 ret = increase_core_file_limit();
 FAIL_IF(ret);


 pkey1 = sys_pkey_alloc(0, PKEY_DISABLE_EXECUTE);
 if (pkey1 < 0) {
  pkey1 = sys_pkey_alloc(0, 0);
  FAIL_IF(pkey1 < 0);

  disable_execute = 0;
 }

 pkey2 = sys_pkey_alloc(0, 0);
 FAIL_IF(pkey2 < 0);

 pkey3 = sys_pkey_alloc(0, 0);
 FAIL_IF(pkey3 < 0);

 info->amr |= 3ul << pkeyshift(pkey1) | 2ul << pkeyshift(pkey2);

 if (disable_execute)
  info->iamr |= 1ul << pkeyshift(pkey1);
 else
  info->iamr &= ~(1ul << pkeyshift(pkey1));

 info->iamr &= ~(1ul << pkeyshift(pkey2) | 1ul << pkeyshift(pkey3));

 info->uamor |= 3ul << pkeyshift(pkey1) | 3ul << pkeyshift(pkey2);

 printf("%-30s AMR: %016lx pkey1: %d pkey2: %d pkey3: %d\n",
        user_write, info->amr, pkey1, pkey2, pkey3);

 mtspr(SPRN_AMR, info->amr);





 sys_pkey_free(pkey3);

 info->core_time = time(((void*)0));


 ptr = 0;
 *ptr = 1;


 FAIL_IF(1);

 return TEST_FAIL;
}
