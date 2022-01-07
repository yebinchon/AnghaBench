
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROPERTY_DEFINITION ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void pd_free(PROPERTY_DEFINITION *pd)
{
    OPENSSL_free(pd);
}
