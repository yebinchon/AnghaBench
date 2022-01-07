
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mhz; int sslope; int sfreq; int bwadj; int fbdiv; int refdiv; int outdiv; } ;
typedef TYPE_1__ PLL_CONFIG ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* C_PLL_CONFIG ;
 int PLL_FREQ_STEP ;
 int PLL_LOW_FREQ ;
 int debug (char*,int) ;
 int plla_configure (int ,int ,int ,int ,int ,int ) ;
 int printf (char*,unsigned int) ;

int plla_set_config(int mhz)
{
 int index = (mhz - PLL_LOW_FREQ) / PLL_FREQ_STEP;
 const PLL_CONFIG *cfg;

 if (index < 0 || index > ARRAY_SIZE(C_PLL_CONFIG)) {
  debug("Freq %d MHz out of range, default to lowest\n", mhz);
  index = 0;
 }
 cfg = &C_PLL_CONFIG[index];

 printf("Attempting to set PLLA to %d MHz ...\n", (unsigned) cfg->mhz);
 plla_configure(cfg->outdiv, cfg->refdiv, cfg->fbdiv, cfg->bwadj,
                cfg->sfreq, cfg->sslope);

 return cfg->mhz;
}
