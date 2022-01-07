
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io; int (* system ) (int ,char const*) ;} ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef TYPE_2__ RDebug ;


 int r_cons_flush () ;
 char* sdb_fmt (char*,int) ;
 int stub1 (int ,char const*) ;

__attribute__((used)) static bool __io_kill(RDebug *dbg, int pid, int tid, int sig) {
 const char *cmd = sdb_fmt ("dk %d", sig);
 dbg->iob.system (dbg->iob.io, cmd);
 r_cons_flush ();
 return 1;
}
