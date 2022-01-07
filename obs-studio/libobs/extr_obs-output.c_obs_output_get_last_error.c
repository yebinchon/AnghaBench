
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* last_error_message; } ;
typedef TYPE_1__ obs_output_t ;


 int obs_output_valid (TYPE_1__*,char*) ;

const char *obs_output_get_last_error(obs_output_t *output)
{
 if (!obs_output_valid(output, "obs_output_get_last_error"))
  return ((void*)0);

 return output->last_error_message;
}
