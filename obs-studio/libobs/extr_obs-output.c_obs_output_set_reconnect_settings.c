
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reconnect_retry_max; int reconnect_retry_sec; } ;
typedef TYPE_1__ obs_output_t ;


 int obs_output_valid (TYPE_1__*,char*) ;

void obs_output_set_reconnect_settings(obs_output_t *output, int retry_count,
           int retry_sec)
{
 if (!obs_output_valid(output, "obs_output_set_reconnect_settings"))
  return;

 output->reconnect_retry_max = retry_count;
 output->reconnect_retry_sec = retry_sec;
}
