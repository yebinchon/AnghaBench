
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_8__ {int notify_type; int signal; } ;
struct TYPE_6__ {int signum; } ;
struct TYPE_7__ {TYPE_1__ reason; } ;
typedef TYPE_2__ RDebug ;


 TYPE_4__* desc ;
 int null_ptid ;
 int ptid_equal (int ,int ) ;
 int qnxr_wait (TYPE_4__*,int) ;

__attribute__((used)) static int r_debug_qnx_wait (RDebug *dbg, int pid) {
 ptid_t ptid = qnxr_wait (desc, pid);
 if (!ptid_equal (ptid, null_ptid)) {
  dbg->reason.signum = desc->signal;
  return desc->notify_type;
 }
 return 0;
}
