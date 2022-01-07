
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_PMC1 ;
 int mtspr (int ,int ) ;

void write_pmc1(void)
{
 mtspr(SPRN_PMC1, 0);
}
