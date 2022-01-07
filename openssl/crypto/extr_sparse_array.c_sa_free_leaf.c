
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ossl_uintmax_t ;


 int OPENSSL_free (void*) ;

__attribute__((used)) static void sa_free_leaf(ossl_uintmax_t n, void *p, void *arg)
{
    OPENSSL_free(p);
}
