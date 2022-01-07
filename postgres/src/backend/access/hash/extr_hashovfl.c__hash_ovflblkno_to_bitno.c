
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int hashm_ovflpoint; int* hashm_spares; } ;
typedef TYPE_1__* HashMetaPage ;
typedef scalar_t__ BlockNumber ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ _hash_get_totalbuckets (int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__) ;

uint32
_hash_ovflblkno_to_bitno(HashMetaPage metap, BlockNumber ovflblkno)
{
 uint32 splitnum = metap->hashm_ovflpoint;
 uint32 i;
 uint32 bitnum;


 for (i = 1; i <= splitnum; i++)
 {
  if (ovflblkno <= (BlockNumber) _hash_get_totalbuckets(i))
   break;
  bitnum = ovflblkno - _hash_get_totalbuckets(i);







  if (bitnum > metap->hashm_spares[i - 1] &&
   bitnum <= metap->hashm_spares[i])
   return bitnum - 1;
 }

 ereport(ERROR,
   (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
    errmsg("invalid overflow block number %u", ovflblkno)));
 return 0;
}
