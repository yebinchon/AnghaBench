
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_FEATURE2_ARCH_3_00 ;
 int SKIP_IF (int) ;
 scalar_t__ cacheline_buf ;
 int copy_first (scalar_t__) ;
 int have_hwcap2 (int ) ;
 int setup_signal_handler () ;

int test_copy_first_unaligned(void)
{

 SKIP_IF(!have_hwcap2(PPC_FEATURE2_ARCH_3_00));


 setup_signal_handler();


 copy_first(cacheline_buf+1);


 return 1;
}
