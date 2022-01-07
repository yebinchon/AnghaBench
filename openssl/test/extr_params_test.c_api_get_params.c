
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_st {int p6; int p5; int p4; int p3; int p2; int p1; } ;
typedef int OSSL_PARAM ;


 int * OSSL_PARAM_locate (int *,char*) ;
 int OSSL_PARAM_set_BN (int *,int ) ;
 int OSSL_PARAM_set_double (int *,int ) ;
 int OSSL_PARAM_set_int (int *,int ) ;
 int OSSL_PARAM_set_utf8_ptr (int *,int ) ;
 int OSSL_PARAM_set_utf8_string (int *,int ) ;
 int TEST_true (int ) ;

__attribute__((used)) static int api_get_params(void *vobj, OSSL_PARAM *params)
{
    struct object_st *obj = vobj;
    OSSL_PARAM *p = ((void*)0);

    if ((p = OSSL_PARAM_locate(params, "p1")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_set_int(p, obj->p1)))
        return 0;
    if ((p = OSSL_PARAM_locate(params, "p2")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_set_double(p, obj->p2)))
        return 0;
    if ((p = OSSL_PARAM_locate(params, "p3")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_set_BN(p, obj->p3)))
        return 0;
    if ((p = OSSL_PARAM_locate(params, "p4")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_set_utf8_string(p, obj->p4)))
        return 0;
    if ((p = OSSL_PARAM_locate(params, "p5")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_set_utf8_string(p, obj->p5)))
        return 0;
    if ((p = OSSL_PARAM_locate(params, "p6")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_set_utf8_ptr(p, obj->p6)))
        return 0;

    return 1;
}
