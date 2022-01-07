
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmp_ctx; int hdr; } ;
typedef TYPE_1__ CMP_HDR_TEST_FIXTURE ;


 int OPENSSL_free (TYPE_1__*) ;
 int OSSL_CMP_CTX_free (int ) ;
 int OSSL_CMP_PKIHEADER_free (int ) ;

__attribute__((used)) static void tear_down(CMP_HDR_TEST_FIXTURE *fixture)
{
    OSSL_CMP_PKIHEADER_free(fixture->hdr);
    OSSL_CMP_CTX_free(fixture->cmp_ctx);
    OPENSSL_free(fixture);
}
