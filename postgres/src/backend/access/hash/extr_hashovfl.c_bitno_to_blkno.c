
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_3__ {size_t hashm_ovflpoint; size_t* hashm_spares; } ;
typedef TYPE_1__* HashMetaPage ;
typedef int BlockNumber ;


 size_t _hash_get_totalbuckets (size_t) ;

__attribute__((used)) static BlockNumber
bitno_to_blkno(HashMetaPage metap, uint32 ovflbitnum)
{
 uint32 splitnum = metap->hashm_ovflpoint;
 uint32 i;


 ovflbitnum += 1;


 for (i = 1;
   i < splitnum && ovflbitnum > metap->hashm_spares[i];
   i++)
              ;





 return (BlockNumber) (_hash_get_totalbuckets(i) + ovflbitnum);
}
