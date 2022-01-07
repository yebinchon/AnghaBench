
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_st {char* p4; char* p5; char* p6; void* p6_l; void* p5_l; int p3; int p2; int p1; } ;
typedef int OSSL_PARAM ;


 int OPENSSL_free (char*) ;
 int OSSL_PARAM_get_BN (int const*,int *) ;
 int OSSL_PARAM_get_double (int const*,int *) ;
 int OSSL_PARAM_get_int (int const*,int *) ;
 int OSSL_PARAM_get_utf8_ptr (int const*,char**) ;
 int OSSL_PARAM_get_utf8_string (int const*,char**,int) ;
 int * OSSL_PARAM_locate_const (int const*,char*) ;
 int TEST_true (int ) ;
 void* strlen (char*) ;

__attribute__((used)) static int api_set_params(void *vobj, const OSSL_PARAM *params)
{
    struct object_st *obj = vobj;
    const OSSL_PARAM *p = ((void*)0);

    if ((p = OSSL_PARAM_locate_const(params, "p1")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_get_int(p, &obj->p1)))
        return 0;
    if ((p = OSSL_PARAM_locate_const(params, "p2")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_get_double(p, &obj->p2)))
        return 0;
    if ((p = OSSL_PARAM_locate_const(params, "p3")) != ((void*)0)
        && !TEST_true(OSSL_PARAM_get_BN(p, &obj->p3)))
        return 0;
    if ((p = OSSL_PARAM_locate_const(params, "p4")) != ((void*)0)) {
        OPENSSL_free(obj->p4);
        obj->p4 = ((void*)0);

        if (!TEST_true(OSSL_PARAM_get_utf8_string(p, &obj->p4, 0)))
            return 0;
    }
    if ((p = OSSL_PARAM_locate_const(params, "p5")) != ((void*)0)) {
        char *p5_ptr = obj->p5;
        if (!TEST_true(OSSL_PARAM_get_utf8_string(p, &p5_ptr, sizeof(obj->p5))))
            return 0;
        obj->p5_l = strlen(obj->p5) + 1;
    }
    if ((p = OSSL_PARAM_locate_const(params, "p6")) != ((void*)0)) {
        if (!TEST_true(OSSL_PARAM_get_utf8_ptr(p, &obj->p6)))
            return 0;
        obj->p6_l = strlen(obj->p6) + 1;
    }

    return 1;
}
