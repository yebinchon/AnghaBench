
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int limb ;


 int felem_is_zero (void const*) ;

__attribute__((used)) static int felem_is_zero_int(const void *in)
{
    return (int)(felem_is_zero(in) & ((limb) 1));
}
