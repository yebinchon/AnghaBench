
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int felem_bytearray ;
typedef int felem ;
typedef int b_out ;
typedef int BIGNUM ;


 int * BN_lebin2bn (int ,int,int *) ;
 int felem_to_bin66 (int ,int const) ;

__attribute__((used)) static BIGNUM *felem_to_BN(BIGNUM *out, const felem in)
{
    felem_bytearray b_out;
    felem_to_bin66(b_out, in);
    return BN_lebin2bn(b_out, sizeof(b_out), out);
}
