
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_XFORM_TEST (int ) ;
 int PPC_FEATURE_ARCH_2_06 ;
 int SKIP_IF (int) ;
 int STORE_XFORM_TEST (int ) ;
 int can_open_fb0 () ;
 int have_hwcap (int ) ;
 int ldbrx ;
 int printf (char*) ;
 int stdbrx ;

int test_alignment_handler_integer_206(void)
{
 int rc = 0;

 SKIP_IF(!can_open_fb0());
 SKIP_IF(!have_hwcap(PPC_FEATURE_ARCH_2_06));

 printf("Integer: 2.06\n");

 LOAD_XFORM_TEST(ldbrx);
 STORE_XFORM_TEST(stdbrx);

 return rc;
}
