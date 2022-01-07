
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OSSL_PARAM_END ;

OSSL_PARAM OSSL_PARAM_construct_end(void)
{
    OSSL_PARAM end = OSSL_PARAM_END;

    return end;
}
