
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_GROUP ;


 int HAVEPRECOMP (int const*,int ) ;
 int ec ;

int ec_wNAF_have_precompute_mult(const EC_GROUP *group)
{
    return HAVEPRECOMP(group, ec);
}
