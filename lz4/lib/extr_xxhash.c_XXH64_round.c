
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;


 int PRIME64_1 ;
 int PRIME64_2 ;
 int XXH_rotl64 (int,int) ;

__attribute__((used)) static U64 XXH64_round(U64 acc, U64 input)
{
    acc += input * PRIME64_2;
    acc = XXH_rotl64(acc, 31);
    acc *= PRIME64_1;
    return acc;
}
