
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_DH_CTX ;


 void* OPENSSL_zalloc (int) ;

__attribute__((used)) static void *dh_newctx(void *provctx)
{
    return OPENSSL_zalloc(sizeof(PROV_DH_CTX));
}
