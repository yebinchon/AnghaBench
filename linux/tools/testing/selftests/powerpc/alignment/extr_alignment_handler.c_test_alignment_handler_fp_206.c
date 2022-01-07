
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_FLOAT_XFORM_TEST (int ) ;
 int PPC_FEATURE_ARCH_2_06 ;
 int SKIP_IF (int) ;
 int can_open_fb0 () ;
 int have_hwcap (int ) ;
 int lfiwzx ;
 int printf (char*) ;

int test_alignment_handler_fp_206(void)
{
 int rc = 0;

 SKIP_IF(!can_open_fb0());
 SKIP_IF(!have_hwcap(PPC_FEATURE_ARCH_2_06));

 printf("Floating point: 2.06\n");

 LOAD_FLOAT_XFORM_TEST(lfiwzx);

 return rc;
}
