
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADDR ;
 int IPC_CREAT ;
 int IPC_RMID ;
 unsigned long LENGTH ;
 int SHMAT_FLAGS ;
 int SHM_HUGETLB ;
 int SHM_R ;
 int SHM_W ;
 int dprintf (char*) ;
 int exit (int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 char* shmat (int,int ,int ) ;
 int shmctl (int,int ,int *) ;
 scalar_t__ shmdt (void const*) ;
 int shmget (int,unsigned long,int) ;

int main(void)
{
 int shmid;
 unsigned long i;
 char *shmaddr;

 shmid = shmget(2, LENGTH, SHM_HUGETLB | IPC_CREAT | SHM_R | SHM_W);
 if (shmid < 0) {
  perror("shmget");
  exit(1);
 }
 printf("shmid: 0x%x\n", shmid);

 shmaddr = shmat(shmid, ADDR, SHMAT_FLAGS);
 if (shmaddr == (char *)-1) {
  perror("Shared memory attach failure");
  shmctl(shmid, IPC_RMID, ((void*)0));
  exit(2);
 }
 printf("shmaddr: %p\n", shmaddr);

 dprintf("Starting the writes:\n");
 for (i = 0; i < LENGTH; i++) {
  shmaddr[i] = (char)(i);
  if (!(i % (1024 * 1024)))
   dprintf(".");
 }
 dprintf("\n");

 dprintf("Starting the Check...");
 for (i = 0; i < LENGTH; i++)
  if (shmaddr[i] != (char)i) {
   printf("\nIndex %lu mismatched\n", i);
   exit(3);
  }
 dprintf("Done.\n");

 if (shmdt((const void *)shmaddr) != 0) {
  perror("Detach failure");
  shmctl(shmid, IPC_RMID, ((void*)0));
  exit(4);
 }

 shmctl(shmid, IPC_RMID, ((void*)0));

 return 0;
}
