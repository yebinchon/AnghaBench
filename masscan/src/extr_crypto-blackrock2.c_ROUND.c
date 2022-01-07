
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t T ;


 size_t GETBYTE (int,int) ;
 int* SB1 ;
 int* SB2 ;
 int* SB3 ;
 int* SB4 ;
 int* SB5 ;
 int* SB6 ;
 int* SB7 ;
 int* SB8 ;
 int* sbox2 ;

__attribute__((used)) static inline uint64_t
ROUND(uint64_t r, uint64_t R, uint64_t seed)
{




    uint64_t T, Y;

    T = R ^ ((seed>>r) | (seed<<(64-r)));


    if (r & 1) {
        Y = SB8[ (T ) & 0x3F ] ^ SB6[ (T >> 8) & 0x3F ] ^ SB4[ (T >> 16) & 0x3F ] ^ SB2[ (T >> 24) & 0x3F ]; } else {




        Y = SB7[ (T ) & 0x3F ] ^ SB5[ (T >> 8) & 0x3F ] ^ SB3[ (T >> 16) & 0x3F ] ^ SB1[ (T >> 24) & 0x3F ];



    }
    return Y;
}
