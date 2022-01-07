
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chEvtBroadcast (int *) ;
 int new_data_event ;

void signal_data_written(void) { chEvtBroadcast(&new_data_event); }
