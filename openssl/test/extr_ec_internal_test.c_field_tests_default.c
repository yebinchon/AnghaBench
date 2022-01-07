
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nid; } ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int OBJ_nid2sn (int) ;
 int TEST_info (char*,int ) ;
 int TEST_ptr (int *) ;
 TYPE_1__* curves ;
 int group_field_tests (int *,int *) ;

__attribute__((used)) static int field_tests_default(int n)
{
    BN_CTX *ctx = ((void*)0);
    EC_GROUP *group = ((void*)0);
    int nid = curves[n].nid;
    int ret = 0;

    TEST_info("Testing curve %s\n", OBJ_nid2sn(nid));

    if (!TEST_ptr(group = EC_GROUP_new_by_curve_name(nid))
        || !TEST_ptr(ctx = BN_CTX_new())
        || !group_field_tests(group, ctx))
        goto err;

    ret = 1;
 err:
    if (group != ((void*)0))
        EC_GROUP_free(group);
    if (ctx != ((void*)0))
        BN_CTX_free(ctx);
    return ret;
}
