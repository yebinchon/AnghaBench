
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int SPRN_TFHAR ;
 int SPRN_TFIAR ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;
 int num_loops ;
 scalar_t__ passed ;
 int sched_setaffinity (int ,int,int *) ;

void tfiar_tfhar(void *in)
{
 int i, cpu;
 unsigned long tfhar, tfhar_rd, tfiar, tfiar_rd;
 cpu_set_t cpuset;

 CPU_ZERO(&cpuset);
 cpu = (unsigned long)in >> 1;
 CPU_SET(cpu, &cpuset);
 sched_setaffinity(0, sizeof(cpuset), &cpuset);


 tfiar = ((unsigned long)in) + 1;
 tfiar += 2;
 mtspr(SPRN_TFIAR, tfiar);


 tfhar = ((unsigned long)in);
 tfhar &= ~0x3UL;
 tfhar += 4;
 mtspr(SPRN_TFHAR, tfhar);

 for (i = 0; i < num_loops; i++) {
  tfhar_rd = mfspr(SPRN_TFHAR);
  tfiar_rd = mfspr(SPRN_TFIAR);
  if ( (tfhar != tfhar_rd) || (tfiar != tfiar_rd) ) {
   passed = 0;
   return;
  }
 }
 return;
}
