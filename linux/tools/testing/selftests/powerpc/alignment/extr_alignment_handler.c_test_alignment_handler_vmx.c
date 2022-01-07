
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_VMX_XFORM_TEST (int ) ;
 int PPC_FEATURE_HAS_ALTIVEC ;
 int SKIP_IF (int) ;
 int STORE_VMX_XFORM_TEST (int ) ;
 int can_open_fb0 () ;
 int have_hwcap (int ) ;
 int lvx ;
 int printf (char*) ;
 int stvebx ;
 int stvehx ;
 int stvewx ;
 int stvx ;
 int stvxl ;

int test_alignment_handler_vmx(void)
{
 int rc = 0;

 SKIP_IF(!can_open_fb0());
 SKIP_IF(!have_hwcap(PPC_FEATURE_HAS_ALTIVEC));

 printf("VMX\n");
 LOAD_VMX_XFORM_TEST(lvx);
 STORE_VMX_XFORM_TEST(stvx);
 STORE_VMX_XFORM_TEST(stvebx);
 STORE_VMX_XFORM_TEST(stvehx);
 STORE_VMX_XFORM_TEST(stvewx);
 STORE_VMX_XFORM_TEST(stvxl);
 return rc;
}
