
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_VMX_DFORM_TEST (int ) ;
 int LOAD_VSX_DFORM_TEST (int ) ;
 int LOAD_VSX_XFORM_TEST (int ) ;
 int PPC_FEATURE2_ARCH_3_00 ;
 int SKIP_IF (int) ;
 int STORE_VMX_DFORM_TEST (int ) ;
 int STORE_VSX_DFORM_TEST (int ) ;
 int STORE_VSX_XFORM_TEST (int ) ;
 int can_open_fb0 () ;
 int have_hwcap2 (int ) ;
 int lxsd ;
 int lxsibzx ;
 int lxsihzx ;
 int lxssp ;
 int lxv ;
 int lxvb16x ;
 int lxvh8x ;
 int lxvl ;
 int lxvll ;
 int lxvwsx ;
 int lxvx ;
 int printf (char*) ;
 int stxsd ;
 int stxsibx ;
 int stxsihx ;
 int stxssp ;
 int stxv ;
 int stxvb16x ;
 int stxvh8x ;
 int stxvl ;
 int stxvll ;
 int stxvx ;

int test_alignment_handler_vsx_300(void)
{
 int rc = 0;

 SKIP_IF(!can_open_fb0());

 SKIP_IF(!have_hwcap2(PPC_FEATURE2_ARCH_3_00));
 printf("VSX: 3.00B\n");
 LOAD_VMX_DFORM_TEST(lxsd);
 LOAD_VSX_XFORM_TEST(lxsibzx);
 LOAD_VSX_XFORM_TEST(lxsihzx);
 LOAD_VMX_DFORM_TEST(lxssp);
 LOAD_VSX_DFORM_TEST(lxv);
 LOAD_VSX_XFORM_TEST(lxvb16x);
 LOAD_VSX_XFORM_TEST(lxvh8x);
 LOAD_VSX_XFORM_TEST(lxvx);
 LOAD_VSX_XFORM_TEST(lxvwsx);
 LOAD_VSX_XFORM_TEST(lxvl);
 LOAD_VSX_XFORM_TEST(lxvll);
 STORE_VMX_DFORM_TEST(stxsd);
 STORE_VSX_XFORM_TEST(stxsibx);
 STORE_VSX_XFORM_TEST(stxsihx);
 STORE_VMX_DFORM_TEST(stxssp);
 STORE_VSX_DFORM_TEST(stxv);
 STORE_VSX_XFORM_TEST(stxvb16x);
 STORE_VSX_XFORM_TEST(stxvh8x);
 STORE_VSX_XFORM_TEST(stxvx);
 STORE_VSX_XFORM_TEST(stxvl);
 STORE_VSX_XFORM_TEST(stxvll);
 return rc;
}
