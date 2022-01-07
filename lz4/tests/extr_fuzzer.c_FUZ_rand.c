
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int FUZ_rotl32 (int ,int) ;
 int PRIME1 ;
 int PRIME2 ;

__attribute__((used)) static U32 FUZ_rand(U32* src)
{
    U32 rand32 = *src;
    rand32 *= PRIME1;
    rand32 ^= PRIME2;
    rand32 = FUZ_rotl32(rand32, 13);
    *src = rand32;
    return rand32;
}
