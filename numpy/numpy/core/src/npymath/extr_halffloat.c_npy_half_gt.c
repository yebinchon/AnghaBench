
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_half ;


 int npy_half_lt (int ,int ) ;

int npy_half_gt(npy_half h1, npy_half h2)
{
    return npy_half_lt(h2, h1);
}
