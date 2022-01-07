
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
 int mtspr (int ,int ) ;

void write_pmc(int pmc, u64 value)
{
 switch (pmc) {
  case 1: mtspr(SPRN_PMC1, value); break;
  case 2: mtspr(SPRN_PMC2, value); break;
  case 3: mtspr(SPRN_PMC3, value); break;
  case 4: mtspr(SPRN_PMC4, value); break;
  case 5: mtspr(SPRN_PMC5, value); break;
  case 6: mtspr(SPRN_PMC6, value); break;
 }
}
