
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_6__ {int BaseAddress; scalar_t__ EncodeFlagMask; } ;
struct TYPE_5__ {scalar_t__ bits; } ;
typedef TYPE_1__ RDebug ;
typedef int PHEAP_USERDATA_HEADER ;
typedef int PHEAP_ENTRY ;
typedef TYPE_2__* PHEAP ;
typedef int DWORD ;
typedef int BYTE ;


 int PtrToInt (int ) ;
 scalar_t__ R_SYS_BITS_64 ;
 int r_return_val_if_fail (int,int) ;

__attribute__((used)) static bool DecodeLFHEntry(RDebug *dbg, PHEAP heap, PHEAP_ENTRY entry, PHEAP_USERDATA_HEADER userBlocks, WPARAM key, WPARAM addr) {
 r_return_val_if_fail (heap && entry, 0);
 if (dbg->bits == R_SYS_BITS_64) {
  entry = (WPARAM)entry + dbg->bits;
 }

 if (heap->EncodeFlagMask) {
  *(DWORD *)entry ^= PtrToInt (heap->BaseAddress) ^ (DWORD)(((DWORD)addr - PtrToInt (userBlocks)) << 0xC) ^ (DWORD)key ^ (addr >> 4);
 }
 return !(((BYTE *)entry)[0] ^ ((BYTE *)entry)[1] ^ ((BYTE *)entry)[2] ^ ((BYTE *)entry)[3]);
}
