
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * litDistribTable ;
typedef size_t U32 ;
typedef int BYTE ;


 size_t LTMASK ;
 size_t RDG_rand (size_t*) ;

__attribute__((used)) static BYTE RDG_genChar(U32* seed, const litDistribTable lt)
{
    U32 id = RDG_rand(seed) & LTMASK;
    return (lt[id]);
}
