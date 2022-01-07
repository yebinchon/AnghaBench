
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ reconnect_retry_max; } ;
typedef TYPE_1__ obs_output_t ;


 int OBS_OUTPUT_DISCONNECTED ;
 int OBS_OUTPUT_SUCCESS ;
 scalar_t__ reconnecting (TYPE_1__ const*) ;

__attribute__((used)) static inline bool can_reconnect(const obs_output_t *output, int code)
{
 bool reconnect_active = output->reconnect_retry_max != 0;

 return (reconnecting(output) && code != OBS_OUTPUT_SUCCESS) ||
        (reconnect_active && code == OBS_OUTPUT_DISCONNECTED);
}
