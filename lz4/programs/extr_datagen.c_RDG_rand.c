
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int U32 ;


 unsigned int PRIME1 ;
 unsigned int PRIME2 ;
 unsigned int RDG_rotl32 (unsigned int,int) ;

__attribute__((used)) static unsigned int RDG_rand(U32* src)
{
    U32 rand32 = *src;
    rand32 *= PRIME1;
    rand32 ^= PRIME2;
    rand32 = RDG_rotl32(rand32, 13);
    *src = rand32;
    return rand32;
}
