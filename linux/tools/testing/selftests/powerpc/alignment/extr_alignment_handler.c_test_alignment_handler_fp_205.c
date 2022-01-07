
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_FLOAT_DFORM_TEST (int ) ;
 int LOAD_FLOAT_XFORM_TEST (int ) ;
 int PPC_FEATURE_ARCH_2_05 ;
 int SKIP_IF (int) ;
 int STORE_FLOAT_DFORM_TEST (int ) ;
 int STORE_FLOAT_XFORM_TEST (int ) ;
 int can_open_fb0 () ;
 int have_hwcap (int ) ;
 int lfdp ;
 int lfdpx ;
 int lfiwax ;
 int printf (char*) ;
 int stfdp ;
 int stfdpx ;

int test_alignment_handler_fp_205(void)
{
 int rc = 0;

 SKIP_IF(!can_open_fb0());
 SKIP_IF(!have_hwcap(PPC_FEATURE_ARCH_2_05));

 printf("Floating point: 2.05\n");

 LOAD_FLOAT_DFORM_TEST(lfdp);
 LOAD_FLOAT_XFORM_TEST(lfdpx);
 LOAD_FLOAT_XFORM_TEST(lfiwax);
 STORE_FLOAT_DFORM_TEST(stfdp);
 STORE_FLOAT_XFORM_TEST(stfdpx);

 return rc;
}
