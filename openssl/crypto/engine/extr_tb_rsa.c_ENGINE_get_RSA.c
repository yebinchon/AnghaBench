
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* rsa_meth; } ;
typedef int RSA_METHOD ;
typedef TYPE_1__ ENGINE ;



const RSA_METHOD *ENGINE_get_RSA(const ENGINE *e)
{
    return e->rsa_meth;
}
