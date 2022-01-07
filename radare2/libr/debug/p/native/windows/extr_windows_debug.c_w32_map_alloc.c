
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_9__ {TYPE_2__* user; } ;
struct TYPE_7__ {int hProcess; } ;
struct TYPE_8__ {TYPE_1__ pi; } ;
typedef int SIZE_T ;
typedef TYPE_2__ RIOW32Dbg ;
typedef int RDebugMap ;
typedef TYPE_3__ RDebug ;
typedef scalar_t__ LPVOID ;


 int MEM_COMMIT ;
 int PAGE_READWRITE ;
 scalar_t__ VirtualAllocEx (int ,scalar_t__,int ,int ,int ) ;
 int * r_debug_map_get (TYPE_3__*,scalar_t__) ;
 int r_debug_map_sync (TYPE_3__*) ;
 int r_sys_perror (char*) ;

RDebugMap *w32_map_alloc(RDebug *dbg, ut64 addr, int size) {
 RIOW32Dbg *rio = dbg->user;
 LPVOID base = VirtualAllocEx (rio->pi.hProcess, (LPVOID)addr, (SIZE_T)size, MEM_COMMIT, PAGE_READWRITE);
 if (!base) {
  r_sys_perror ("w32_map_alloc/VirtualAllocEx");
  return ((void*)0);
 }
 r_debug_map_sync (dbg);
 return r_debug_map_get (dbg, (ut64)base);
}
