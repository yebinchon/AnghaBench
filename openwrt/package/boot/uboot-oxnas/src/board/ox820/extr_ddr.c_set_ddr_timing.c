
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDR_PHY_TIMING ;
 unsigned int DDR_PHY_TIMING_CK ;
 unsigned int DDR_PHY_TIMING_INC ;
 unsigned int DDR_PHY_TIMING_I_CE ;
 unsigned int DDR_PHY_TIMING_I_RST ;
 unsigned int DDR_PHY_TIMING_W_CE ;
 unsigned int DDR_PHY_TIMING_W_RST ;
 int writel (unsigned int,int ) ;

void set_ddr_timing(unsigned int w, unsigned int i)
{
 unsigned int reg;
 unsigned int wnow = 16;
 unsigned int inow = 32;


 writel(DDR_PHY_TIMING_W_RST | DDR_PHY_TIMING_I_RST, DDR_PHY_TIMING);
 writel(DDR_PHY_TIMING_W_RST | DDR_PHY_TIMING_I_RST | DDR_PHY_TIMING_CK,
        DDR_PHY_TIMING);
 writel(DDR_PHY_TIMING_W_RST | DDR_PHY_TIMING_I_RST, DDR_PHY_TIMING);


 while (wnow != w) {
  if (wnow < w) {
   reg = DDR_PHY_TIMING_INC;
   wnow++;
  } else {
   reg = 0;
   wnow--;
  }
  writel(DDR_PHY_TIMING_W_CE | reg, DDR_PHY_TIMING);
  writel(DDR_PHY_TIMING_CK | DDR_PHY_TIMING_W_CE | reg,
         DDR_PHY_TIMING);
  writel(DDR_PHY_TIMING_W_CE | reg, DDR_PHY_TIMING);
 }


 while (inow != i) {
  if (inow < i) {
   reg = DDR_PHY_TIMING_INC;
   inow++;
  } else {
   reg = 0;
   inow--;
  }
  writel(DDR_PHY_TIMING_I_CE | reg, DDR_PHY_TIMING);
  writel(DDR_PHY_TIMING_CK | DDR_PHY_TIMING_I_CE | reg,
         DDR_PHY_TIMING);
  writel(DDR_PHY_TIMING_I_CE | reg, DDR_PHY_TIMING);
 }
}
