
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* longfelem ;
typedef scalar_t__* felem ;


 int felem_reduce_ (scalar_t__*,scalar_t__* const) ;
 scalar_t__* zero105 ;

__attribute__((used)) static void felem_reduce_zero105(felem out, const longfelem in)
{
    out[0] = zero105[0] + in[0];
    out[1] = zero105[1] + in[1];
    out[2] = zero105[2] + in[2];
    out[3] = zero105[3] + in[3];

    felem_reduce_(out, in);
}
