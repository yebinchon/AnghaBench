
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expected; } ;


 int CMP_HDR_TEST_FIXTURE ;
 int EXECUTE_TEST (int ,int ) ;
 int SETUP_TEST_FIXTURE (int ,int ) ;
 int execute_HDR_set_get_pvno_test ;
 TYPE_1__* fixture ;
 int result ;
 int set_up ;
 int tear_down ;

__attribute__((used)) static int test_HDR_set_get_pvno(void)
{
    SETUP_TEST_FIXTURE(CMP_HDR_TEST_FIXTURE, set_up);
    fixture->expected = 1;
    EXECUTE_TEST(execute_HDR_set_get_pvno_test, tear_down);
    return result;
}
