
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSCR_1 ;
 int DSCR_2 ;
 int PPR_1 ;
 int PPR_2 ;
 int SPRN_DSCR ;
 int SPRN_PPR ;
 int SPRN_TAR ;
 int TAR_1 ;
 int TAR_2 ;
 int* cptr ;
 int exit (int) ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,int) ;
 int printf (char*,char*,unsigned long,unsigned long,unsigned long) ;
 int shm_id ;
 scalar_t__ shmat (int ,int *,int ) ;
 int shmdt (int*) ;
 char* user_read ;
 char* user_write ;
 int validate_tar_registers (unsigned long*,int ,int ,int ) ;

void tar(void)
{
 unsigned long reg[3];
 int ret;

 cptr = (int *)shmat(shm_id, ((void*)0), 0);
 printf("%-30s TAR: %u PPR: %lx DSCR: %u\n",
   user_write, TAR_1, PPR_1, DSCR_1);

 mtspr(SPRN_TAR, TAR_1);
 mtspr(SPRN_PPR, PPR_1);
 mtspr(SPRN_DSCR, DSCR_1);

 cptr[2] = 1;


 while (!cptr[0])
  asm volatile("" : : : "memory");

 reg[0] = mfspr(SPRN_TAR);
 reg[1] = mfspr(SPRN_PPR);
 reg[2] = mfspr(SPRN_DSCR);

 printf("%-30s TAR: %lu PPR: %lx DSCR: %lu\n",
   user_read, reg[0], reg[1], reg[2]);


 cptr[1] = 1;
 shmdt((int *)cptr);

 ret = validate_tar_registers(reg, TAR_2, PPR_2, DSCR_2);
 if (ret)
  exit(1);
 exit(0);
}
