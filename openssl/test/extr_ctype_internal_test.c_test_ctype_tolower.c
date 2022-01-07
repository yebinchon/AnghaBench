
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l; int u; } ;


 scalar_t__ TEST_int_eq (int ,int ) ;
 TYPE_1__* case_change ;
 int ossl_tolower (int ) ;

__attribute__((used)) static int test_ctype_tolower(int n)
{
    return TEST_int_eq(ossl_tolower(case_change[n].u), case_change[n].l)
           && TEST_int_eq(ossl_tolower(case_change[n].l), case_change[n].l);
}
