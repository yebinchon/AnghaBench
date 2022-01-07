
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdr; } ;
typedef TYPE_1__ CMP_HDR_TEST_FIXTURE ;


 int TEST_int_eq (int ,int) ;
 int ossl_cmp_hdr_get_pvno (int ) ;
 int ossl_cmp_hdr_set_pvno (int ,int) ;

__attribute__((used)) static int execute_HDR_set_get_pvno_test(CMP_HDR_TEST_FIXTURE *fixture)
{
    int pvno = 77;

    if (!TEST_int_eq(ossl_cmp_hdr_set_pvno(fixture->hdr, pvno), 1))
        return 0;
    if (!TEST_int_eq(ossl_cmp_hdr_get_pvno(fixture->hdr), pvno))
        return 0;
    return 1;
}
