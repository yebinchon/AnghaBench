
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* user; } ;
struct TYPE_9__ {int exe; } ;
struct TYPE_7__ {int hProcess; } ;
struct TYPE_8__ {TYPE_1__ pi; } ;
typedef TYPE_2__ RIOW32Dbg ;
typedef TYPE_3__ RDebugInfo ;
typedef TYPE_4__ RDebug ;


 int __resolve_path (int ,int *) ;

__attribute__((used)) static void __w32_info_exe(RDebug *dbg, RDebugInfo *rdi) {
 RIOW32Dbg *rio = dbg->user;
 rdi->exe = __resolve_path (rio->pi.hProcess, ((void*)0));
}
