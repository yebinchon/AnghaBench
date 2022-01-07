
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compare_vsx_vmx (int ,int ) ;
 int* cptr ;
 int exit (int) ;
 int fp_load ;
 int fp_load_new ;
 int fp_store ;
 int loadvsx (int ,int ) ;
 int shm_id ;
 scalar_t__ shmat (int ,int *,int ) ;
 int shmdt (void*) ;
 int storevsx (int ,int ) ;

void vsx(void)
{
 int ret;

 cptr = (int *)shmat(shm_id, ((void*)0), 0);
 loadvsx(fp_load, 0);
 cptr[1] = 1;

 while (!cptr[0])
  asm volatile("" : : : "memory");
 shmdt((void *) cptr);

 storevsx(fp_store, 0);
 ret = compare_vsx_vmx(fp_store, fp_load_new);
 if (ret)
  exit(1);
 exit(0);
}
