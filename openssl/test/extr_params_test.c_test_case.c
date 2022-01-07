
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prov; TYPE_1__* app; int desc; } ;
struct TYPE_3__ {int (* constructed_params ) () ;int static_params; } ;


 int TEST_info (char*,int ) ;
 int stub1 () ;
 scalar_t__ test_case_variant (int ,int ) ;
 TYPE_2__* test_cases ;

__attribute__((used)) static int test_case(int i)
{
    TEST_info("Case: %s", test_cases[i].desc);

    return test_case_variant(test_cases[i].app->static_params,
                             test_cases[i].prov)
        && (test_cases[i].app->constructed_params == ((void*)0)
            || test_case_variant(test_cases[i].app->constructed_params(),
                                 test_cases[i].prov));
}
