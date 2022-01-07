
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int POLY ;
 int gf2_matrix_square (int*,int*) ;

__attribute__((used)) static void crc32c_zeros_op(uint32_t *even, size_t len)
{
    int n;
    uint32_t row;
    uint32_t odd[32];


    odd[0] = POLY;
    row = 1;
    for (n = 1; n < 32; n++) {
        odd[n] = row;
        row <<= 1;
    }


    gf2_matrix_square(even, odd);


    gf2_matrix_square(odd, even);




    do {
        gf2_matrix_square(even, odd);
        len >>= 1;
        if (len == 0)
            return;
        gf2_matrix_square(odd, even);
        len >>= 1;
    } while (len);


    for (n = 0; n < 32; n++)
        even[n] = odd[n];
}
