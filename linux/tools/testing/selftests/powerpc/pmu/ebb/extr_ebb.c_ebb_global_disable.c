
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BESCR_PME ;
 int SPRN_BESCRR ;
 int mb () ;
 int mtspr (int ,int ) ;

void ebb_global_disable(void)
{

 mtspr(SPRN_BESCRR, BESCR_PME);
 mb();
}
