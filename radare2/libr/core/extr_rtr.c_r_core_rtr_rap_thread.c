
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* user; } ;
struct TYPE_4__ {int input; int core; } ;
typedef TYPE_1__ RapThread ;
typedef int RThreadFunctionRet ;
typedef TYPE_2__ RThread ;


 int R_TH_REPEAT ;
 int R_TH_STOP ;
 scalar_t__ r_core_rtr_rap_run (int ,int ) ;

__attribute__((used)) static RThreadFunctionRet r_core_rtr_rap_thread (RThread *th) {
 if (!th) {
  return 0;
 }
 RapThread *rt = th->user;
 if (!rt || !rt->core) {
  return 0;
 }
 return r_core_rtr_rap_run (rt->core, rt->input) ? R_TH_REPEAT : R_TH_STOP;
}
