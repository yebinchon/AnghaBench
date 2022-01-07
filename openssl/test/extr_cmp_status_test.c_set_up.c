
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* test_case_name; } ;
typedef TYPE_1__ CMP_STATUS_TEST_FIXTURE ;


 TYPE_1__* OPENSSL_zalloc (int) ;
 int TEST_ptr (TYPE_1__*) ;

__attribute__((used)) static CMP_STATUS_TEST_FIXTURE *set_up(const char *const test_case_name)
{
    CMP_STATUS_TEST_FIXTURE *fixture;

    if (!TEST_ptr(fixture = OPENSSL_zalloc(sizeof(*fixture))))
        return ((void*)0);
    fixture->test_case_name = test_case_name;
    return fixture;
}
