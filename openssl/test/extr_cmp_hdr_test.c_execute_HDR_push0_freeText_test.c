
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int freeText; } ;
struct TYPE_4__ {TYPE_2__* hdr; } ;
typedef TYPE_1__ CMP_HDR_TEST_FIXTURE ;
typedef int ASN1_UTF8STRING ;


 int ASN1_STRING_set (int *,char*,int) ;
 int * ASN1_UTF8STRING_new () ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int ossl_cmp_hdr_push0_freeText (TYPE_2__*,int *) ;
 int * sk_ASN1_UTF8STRING_value (int ,int ) ;

__attribute__((used)) static int execute_HDR_push0_freeText_test(CMP_HDR_TEST_FIXTURE *fixture)
{
    ASN1_UTF8STRING* text = ASN1_UTF8STRING_new();

    if (!TEST_ptr(text))
        return 0;

    if (!ASN1_STRING_set(text, "A free text", -1))
        return 0;

    if (!TEST_int_eq(
            ossl_cmp_hdr_push0_freeText(fixture->hdr, text), 1))
        return 0;
    if (!TEST_true(text == sk_ASN1_UTF8STRING_value(
            fixture->hdr->freeText, 0)))
        return 0;

    return 1;
}
