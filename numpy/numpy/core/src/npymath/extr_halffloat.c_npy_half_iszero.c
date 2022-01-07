
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_half ;



int npy_half_iszero(npy_half h)
{
    return (h&0x7fff) == 0;
}
