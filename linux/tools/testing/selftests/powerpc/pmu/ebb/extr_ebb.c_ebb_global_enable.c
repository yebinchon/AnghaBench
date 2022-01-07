
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_BESCR ;
 int mb () ;
 int mtspr (int ,int) ;

void ebb_global_enable(void)
{

 mtspr(SPRN_BESCR, 0x8000000100000000ull);
 mb();
}
