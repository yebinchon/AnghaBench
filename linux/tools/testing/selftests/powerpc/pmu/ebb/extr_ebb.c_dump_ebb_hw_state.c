
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef int u32 ;


 int SPRN_BESCR ;
 int SPRN_EBBHR ;
 int SPRN_MMCR0 ;
 int SPRN_MMCR2 ;
 int SPRN_PMC1 ;
 int SPRN_PMC2 ;
 int SPRN_PMC3 ;
 int SPRN_PMC4 ;
 int SPRN_PMC5 ;
 int SPRN_PMC6 ;
 int SPRN_SIAR ;
 int decode_bescr (void*) ;
 char* decode_mmcr0 (int) ;
 void* mfspr (int ) ;
 int printf (char*,int,char*,void*,void*,void*,int ,void*,void*,void*,void*,void*,void*,void*) ;

void dump_ebb_hw_state(void)
{
 u64 bescr;
 u32 mmcr0;

 mmcr0 = mfspr(SPRN_MMCR0);
 bescr = mfspr(SPRN_BESCR);

 printf("HW state:\n" "MMCR0 0x%016x %s\n" "MMCR2 0x%016lx\n" "EBBHR 0x%016lx\n" "BESCR 0x%016llx %s\n" "PMC1  0x%016lx\n" "PMC2  0x%016lx\n" "PMC3  0x%016lx\n" "PMC4  0x%016lx\n" "PMC5  0x%016lx\n" "PMC6  0x%016lx\n" "SIAR  0x%016lx\n",
        mmcr0, decode_mmcr0(mmcr0), mfspr(SPRN_MMCR2),
        mfspr(SPRN_EBBHR), bescr, decode_bescr(bescr),
        mfspr(SPRN_PMC1), mfspr(SPRN_PMC2), mfspr(SPRN_PMC3),
        mfspr(SPRN_PMC4), mfspr(SPRN_PMC5), mfspr(SPRN_PMC6),
        mfspr(SPRN_SIAR));
}
