
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* (* pmeth_fn ) () ;
struct TYPE_7__ {int pkey_id; } ;
struct TYPE_6__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY_METHOD ;


 TYPE_1__* stub1 () ;

__attribute__((used)) static int pmeth_func_cmp(const EVP_PKEY_METHOD *const *a, pmeth_fn const *b)
{
    return ((*a)->pkey_id - ((**b)())->pkey_id);
}
