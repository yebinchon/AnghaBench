
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ src_string; scalar_t__ tgt_string; } ;
typedef TYPE_1__ CMP_ASN_TEST_FIXTURE ;


 int ASN1_OCTET_STRING_free (scalar_t__) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void tear_down(CMP_ASN_TEST_FIXTURE *fixture)
{
    ASN1_OCTET_STRING_free(fixture->src_string);
    if (fixture->tgt_string != fixture->src_string)
        ASN1_OCTET_STRING_free(fixture->tgt_string);

    OPENSSL_free(fixture);
}
