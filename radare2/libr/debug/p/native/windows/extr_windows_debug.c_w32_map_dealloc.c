
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_7__ {TYPE_2__* user; } ;
struct TYPE_5__ {int hProcess; } ;
struct TYPE_6__ {TYPE_1__ pi; } ;
typedef TYPE_2__ RIOW32Dbg ;
typedef TYPE_3__ RDebug ;
typedef int LPVOID ;


 int MEM_RELEASE ;
 int VirtualFreeEx (int ,int ,int ,int ) ;
 int r_sys_perror (char*) ;

int w32_map_dealloc(RDebug *dbg, ut64 addr, int size) {
 RIOW32Dbg *rio = dbg->user;
 if (!VirtualFreeEx (rio->pi.hProcess, (LPVOID)addr, 0, MEM_RELEASE)) {
  r_sys_perror ("w32_map_dealloc/VirtualFreeEx");
  return 0;
 }
 return 1;
}
