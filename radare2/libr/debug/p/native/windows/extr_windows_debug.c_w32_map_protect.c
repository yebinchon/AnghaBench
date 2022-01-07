
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
typedef int DWORD ;


 int VirtualProtectEx (int ,int ,int,int ,int *) ;
 int __io_perms_to_prot (int) ;

int w32_map_protect(RDebug *dbg, ut64 addr, int size, int perms) {
 DWORD old;
 RIOW32Dbg *rio = dbg->user;
 return VirtualProtectEx (rio->pi.hProcess, (LPVOID)(size_t)addr,
  size, __io_perms_to_prot (perms), &old);
}
