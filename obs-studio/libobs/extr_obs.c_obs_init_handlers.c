
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signals; int procs; } ;


 TYPE_1__* obs ;
 int obs_signals ;
 int proc_handler_create () ;
 int signal_handler_add_array (int ,int ) ;
 int signal_handler_create () ;

__attribute__((used)) static inline bool obs_init_handlers(void)
{
 obs->signals = signal_handler_create();
 if (!obs->signals)
  return 0;

 obs->procs = proc_handler_create();
 if (!obs->procs)
  return 0;

 return signal_handler_add_array(obs->signals, obs_signals);
}
