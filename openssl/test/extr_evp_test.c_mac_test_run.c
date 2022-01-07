
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int * mac; } ;
typedef TYPE_1__ MAC_DATA ;
typedef TYPE_2__ EVP_TEST ;


 int mac_test_run_mac (TYPE_2__*) ;
 int mac_test_run_pkey (TYPE_2__*) ;

__attribute__((used)) static int mac_test_run(EVP_TEST *t)
{
    MAC_DATA *expected = t->data;

    if (expected->mac != ((void*)0))
        return mac_test_run_mac(t);
    return mac_test_run_pkey(t);
}
