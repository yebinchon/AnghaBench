
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int* felem ;



__attribute__((used)) static void felem_to_bin28(u8 out[28], const felem in)
{
    unsigned i;
    for (i = 0; i < 7; ++i) {
        out[i] = in[0] >> (8 * i);
        out[i + 7] = in[1] >> (8 * i);
        out[i + 14] = in[2] >> (8 * i);
        out[i + 21] = in[3] >> (8 * i);
    }
}
