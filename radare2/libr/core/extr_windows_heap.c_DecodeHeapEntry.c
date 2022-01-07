
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT32 ;
struct TYPE_9__ {int EncodeFlagMask; int Encoding; } ;
struct TYPE_8__ {TYPE_2__* bits; } ;
typedef TYPE_1__ RDebug ;
typedef TYPE_2__* PHEAP_ENTRY ;
typedef TYPE_2__* PHEAP ;
typedef int BYTE ;


 TYPE_2__* R_SYS_BITS_64 ;
 int r_return_val_if_fail (int,int) ;

__attribute__((used)) static bool DecodeHeapEntry(RDebug *dbg, PHEAP heap, PHEAP_ENTRY entry) {
 r_return_val_if_fail (heap && entry, 0);
 if (dbg->bits == R_SYS_BITS_64) {
  entry = (WPARAM)entry + dbg->bits;
 }
 if (heap->EncodeFlagMask && (*(UINT32 *)entry & heap->EncodeFlagMask)) {
  if (dbg->bits == R_SYS_BITS_64) {
   heap = (WPARAM)heap + dbg->bits;
  }
  *(WPARAM *)entry ^= *(WPARAM *)&heap->Encoding;
 }
 return !(((BYTE *)entry)[0] ^ ((BYTE *)entry)[1] ^ ((BYTE *)entry)[2] ^ ((BYTE *)entry)[3]);
}
