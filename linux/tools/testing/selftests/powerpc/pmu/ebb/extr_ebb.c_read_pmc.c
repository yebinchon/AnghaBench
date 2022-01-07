
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SPRN_PMC1 ;
 int SPRN_PMC2 ;
 int SPRN_PMC3 ;
 int SPRN_PMC4 ;
 int SPRN_PMC5 ;
 int SPRN_PMC6 ;
 int mfspr (int ) ;

u64 read_pmc(int pmc)
{
 switch (pmc) {
  case 1: return mfspr(SPRN_PMC1);
  case 2: return mfspr(SPRN_PMC2);
  case 3: return mfspr(SPRN_PMC3);
  case 4: return mfspr(SPRN_PMC4);
  case 5: return mfspr(SPRN_PMC5);
  case 6: return mfspr(SPRN_PMC6);
 }

 return 0;
}
