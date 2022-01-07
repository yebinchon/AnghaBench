
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int generalInfo; } ;
struct TYPE_4__ {TYPE_2__* hdr; } ;
typedef int OSSL_CMP_ITAV ;
typedef TYPE_1__ CMP_HDR_TEST_FIXTURE ;


 int * OSSL_CMP_ITAV_new () ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int ossl_cmp_hdr_generalInfo_push0_item (TYPE_2__*,int *) ;
 int * sk_OSSL_CMP_ITAV_value (int ,int ) ;

__attribute__((used)) static int
execute_HDR_generalInfo_push0_item_test(CMP_HDR_TEST_FIXTURE *fixture)
{
    OSSL_CMP_ITAV *itav = OSSL_CMP_ITAV_new();

    if (!TEST_ptr(itav))
        return 0;

    if (!TEST_int_eq(
            ossl_cmp_hdr_generalInfo_push0_item(fixture->hdr, itav), 1))
        return 0;
    if (!TEST_true(itav == sk_OSSL_CMP_ITAV_value(
            fixture->hdr->generalInfo, 0)))
        return 0;

    return 1;
}
