
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_VSX_XFORM_TEST (int ) ;
 int PPC_FEATURE_ARCH_2_06 ;
 int SKIP_IF (int) ;
 int STORE_VSX_XFORM_TEST (int ) ;
 int can_open_fb0 () ;
 int have_hwcap (int ) ;
 int lxsdx ;
 int lxvd2x ;
 int lxvdsx ;
 int lxvw4x ;
 int printf (char*) ;
 int stxsdx ;
 int stxvd2x ;
 int stxvw4x ;

int test_alignment_handler_vsx_206(void)
{
 int rc = 0;

 SKIP_IF(!can_open_fb0());
 SKIP_IF(!have_hwcap(PPC_FEATURE_ARCH_2_06));

 printf("VSX: 2.06B\n");
 LOAD_VSX_XFORM_TEST(lxvd2x);
 LOAD_VSX_XFORM_TEST(lxvw4x);
 LOAD_VSX_XFORM_TEST(lxsdx);
 LOAD_VSX_XFORM_TEST(lxvdsx);
 STORE_VSX_XFORM_TEST(stxvd2x);
 STORE_VSX_XFORM_TEST(stxvw4x);
 STORE_VSX_XFORM_TEST(stxsdx);
 return rc;
}
