
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* smallfelem ;
typedef scalar_t__* felem ;


 scalar_t__* zero105 ;

__attribute__((used)) static void smallfelem_neg(felem out, const smallfelem small)
{

    out[0] = zero105[0] - small[0];
    out[1] = zero105[1] - small[1];
    out[2] = zero105[2] - small[2];
    out[3] = zero105[3] - small[3];
}
