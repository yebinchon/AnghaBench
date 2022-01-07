
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_VSX_XFORM_TEST (int ) ;
 int PPC_FEATURE2_ARCH_2_07 ;
 int SKIP_IF (int) ;
 int STORE_VSX_XFORM_TEST (int ) ;
 int can_open_fb0 () ;
 int have_hwcap2 (int ) ;
 int lxsiwax ;
 int lxsiwzx ;
 int lxsspx ;
 int printf (char*) ;
 int stxsiwx ;
 int stxsspx ;

int test_alignment_handler_vsx_207(void)
{
 int rc = 0;

 SKIP_IF(!can_open_fb0());
 SKIP_IF(!have_hwcap2(PPC_FEATURE2_ARCH_2_07));

 printf("VSX: 2.07B\n");
 LOAD_VSX_XFORM_TEST(lxsspx);
 LOAD_VSX_XFORM_TEST(lxsiwax);
 LOAD_VSX_XFORM_TEST(lxsiwzx);
 STORE_VSX_XFORM_TEST(stxsspx);
 STORE_VSX_XFORM_TEST(stxsiwx);
 return rc;
}
