
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; } ;
typedef TYPE_1__ RSA ;


 int BN_num_bytes (int ) ;

int RSA_size(const RSA *r)
{
    return BN_num_bytes(r->n);
}
