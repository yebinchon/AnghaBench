
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dhpeer; int dh; } ;
typedef TYPE_1__ PROV_DH_CTX ;


 int DH_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void dh_freectx(void *vpdhctx)
{
    PROV_DH_CTX *pdhctx = (PROV_DH_CTX *)vpdhctx;

    DH_free(pdhctx->dh);
    DH_free(pdhctx->dhpeer);

    OPENSSL_free(pdhctx);
}
