
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_3__ {int nto_sig; int gdb_sig; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int NTO_SIGRTMAX ;
 int NTO_SIGRTMIN ;
 int TARGET_SIGNAL_REALTIME_41 ;
 TYPE_1__* sig_map ;
 int target_signal_from_host (int) ;

enum target_signal
target_signal_from_nto (int sig) {
 int i;
 if (sig == 0)
  return 0;

 for (i = 0; i != ARRAY_SIZE (sig_map); i++) {
  if (sig_map[i].nto_sig == sig)
   return sig_map[i].gdb_sig;
 }

 if (sig >= NTO_SIGRTMIN && sig <= NTO_SIGRTMAX)
  return TARGET_SIGNAL_REALTIME_41 + sig - NTO_SIGRTMIN;
 return target_signal_from_host (sig);
}
