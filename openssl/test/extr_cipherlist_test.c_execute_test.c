
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client; int server; } ;
typedef TYPE_1__ CIPHERLIST_TEST_FIXTURE ;


 scalar_t__ test_default_cipherlist (int ) ;

__attribute__((used)) static int execute_test(CIPHERLIST_TEST_FIXTURE *fixture)
{
    return fixture != ((void*)0)
        && test_default_cipherlist(fixture->server)
        && test_default_cipherlist(fixture->client);
}
