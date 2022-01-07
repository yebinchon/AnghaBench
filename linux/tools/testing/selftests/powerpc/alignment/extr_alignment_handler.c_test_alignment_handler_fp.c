
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_FLOAT_DFORM_TEST (int ) ;
 int LOAD_FLOAT_XFORM_TEST (int ) ;
 int SKIP_IF (int) ;
 int STORE_FLOAT_DFORM_TEST (int ) ;
 int STORE_FLOAT_XFORM_TEST (int ) ;
 int can_open_fb0 () ;
 int lfd ;
 int lfdu ;
 int lfdux ;
 int lfdx ;
 int lfs ;
 int lfsu ;
 int lfsux ;
 int lfsx ;
 int printf (char*) ;
 int stfd ;
 int stfdu ;
 int stfdux ;
 int stfdx ;
 int stfiwx ;
 int stfs ;
 int stfsu ;
 int stfsux ;
 int stfsx ;

int test_alignment_handler_fp(void)
{
 int rc = 0;

 SKIP_IF(!can_open_fb0());

 printf("Floating point\n");
 LOAD_FLOAT_DFORM_TEST(lfd);
 LOAD_FLOAT_XFORM_TEST(lfdx);
 LOAD_FLOAT_DFORM_TEST(lfdu);
 LOAD_FLOAT_XFORM_TEST(lfdux);
 LOAD_FLOAT_DFORM_TEST(lfs);
 LOAD_FLOAT_XFORM_TEST(lfsx);
 LOAD_FLOAT_DFORM_TEST(lfsu);
 LOAD_FLOAT_XFORM_TEST(lfsux);
 STORE_FLOAT_DFORM_TEST(stfd);
 STORE_FLOAT_XFORM_TEST(stfdx);
 STORE_FLOAT_DFORM_TEST(stfdu);
 STORE_FLOAT_XFORM_TEST(stfdux);
 STORE_FLOAT_DFORM_TEST(stfs);
 STORE_FLOAT_XFORM_TEST(stfsx);
 STORE_FLOAT_DFORM_TEST(stfsu);
 STORE_FLOAT_XFORM_TEST(stfsux);
 STORE_FLOAT_XFORM_TEST(stfiwx);

 return rc;
}
