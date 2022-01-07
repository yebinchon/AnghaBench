
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdr; } ;
typedef TYPE_1__ CMP_HDR_TEST_FIXTURE ;


 scalar_t__ TEST_false (int ) ;
 scalar_t__ TEST_true (int ) ;
 int ossl_cmp_hdr_check_implicitConfirm (int ) ;
 int ossl_cmp_hdr_set_implicitConfirm (int ) ;

__attribute__((used)) static int
execute_HDR_set_and_check_implicitConfirm_test(CMP_HDR_TEST_FIXTURE
                                               * fixture)
{
    return TEST_false(ossl_cmp_hdr_check_implicitConfirm(fixture->hdr))
        && TEST_true(ossl_cmp_hdr_set_implicitConfirm(fixture->hdr))
        && TEST_true(ossl_cmp_hdr_check_implicitConfirm(fixture->hdr));
}
