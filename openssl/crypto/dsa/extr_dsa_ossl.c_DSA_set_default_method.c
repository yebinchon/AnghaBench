
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSA_METHOD ;


 int const* default_DSA_method ;

void DSA_set_default_method(const DSA_METHOD *meth)
{
    default_DSA_method = meth;
}
