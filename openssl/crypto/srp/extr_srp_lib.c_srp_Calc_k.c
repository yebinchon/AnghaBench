
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int * srp_Calc_xy (int const*,int const*,int const*) ;

__attribute__((used)) static BIGNUM *srp_Calc_k(const BIGNUM *N, const BIGNUM *g)
{

    return srp_Calc_xy(N, g, N);
}
