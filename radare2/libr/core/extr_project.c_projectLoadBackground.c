
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* rcPath; struct TYPE_8__* prjName; int core; } ;
struct TYPE_7__ {TYPE_2__* user; } ;
typedef int RThreadFunctionRet ;
typedef TYPE_1__ RThread ;
typedef TYPE_2__ ProjectState ;


 int R_TH_STOP ;
 int free (TYPE_2__*) ;
 int r_core_project_load (int ,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static RThreadFunctionRet projectLoadBackground(RThread *th) {
 ProjectState *ps = th->user;
 r_core_project_load (ps->core, ps->prjName, ps->rcPath);
 free (ps->prjName);
 free (ps->rcPath);
 free (ps);
 return R_TH_STOP;
}
