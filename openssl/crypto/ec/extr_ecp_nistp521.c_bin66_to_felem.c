
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int limb ;
typedef int* felem ;


 int bottom57bits ;
 int bottom58bits ;

__attribute__((used)) static void bin66_to_felem(felem out, const u8 in[66])
{
    out[0] = (*((limb *) & in[0])) & bottom58bits;
    out[1] = (*((limb *) & in[7]) >> 2) & bottom58bits;
    out[2] = (*((limb *) & in[14]) >> 4) & bottom58bits;
    out[3] = (*((limb *) & in[21]) >> 6) & bottom58bits;
    out[4] = (*((limb *) & in[29])) & bottom58bits;
    out[5] = (*((limb *) & in[36]) >> 2) & bottom58bits;
    out[6] = (*((limb *) & in[43]) >> 4) & bottom58bits;
    out[7] = (*((limb *) & in[50]) >> 6) & bottom58bits;
    out[8] = (*((limb *) & in[58])) & bottom57bits;
}
