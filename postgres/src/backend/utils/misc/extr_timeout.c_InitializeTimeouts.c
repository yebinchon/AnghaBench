
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int active; int indicator; scalar_t__ fin_time; scalar_t__ start_time; int * timeout_handler; } ;


 int MAX_TIMEOUTS ;
 int SIGALRM ;
 TYPE_1__* all_timeouts ;
 int all_timeouts_initialized ;
 int disable_alarm () ;
 int handle_sig_alarm ;
 scalar_t__ num_active_timeouts ;
 int pqsignal (int ,int ) ;

void
InitializeTimeouts(void)
{
 int i;


 disable_alarm();

 num_active_timeouts = 0;

 for (i = 0; i < MAX_TIMEOUTS; i++)
 {
  all_timeouts[i].index = i;
  all_timeouts[i].active = 0;
  all_timeouts[i].indicator = 0;
  all_timeouts[i].timeout_handler = ((void*)0);
  all_timeouts[i].start_time = 0;
  all_timeouts[i].fin_time = 0;
 }

 all_timeouts_initialized = 1;


 pqsignal(SIGALRM, handle_sig_alarm);
}
