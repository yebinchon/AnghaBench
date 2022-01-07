
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* g; int const* N; } ;
typedef TYPE_1__ SRP_user_pwd ;
typedef int BIGNUM ;



void SRP_user_pwd_set_gN(SRP_user_pwd *vinfo, const BIGNUM *g,
                         const BIGNUM *N)
{
    vinfo->N = N;
    vinfo->g = g;
}
