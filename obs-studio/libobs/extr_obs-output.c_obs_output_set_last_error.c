
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * last_error_message; } ;
typedef TYPE_1__ obs_output_t ;


 int bfree (int *) ;
 int * bstrdup (char const*) ;
 int obs_output_valid (TYPE_1__*,char*) ;

void obs_output_set_last_error(obs_output_t *output, const char *message)
{
 if (!obs_output_valid(output, "obs_output_set_last_error"))
  return;

 if (output->last_error_message)
  bfree(output->last_error_message);

 if (message)
  output->last_error_message = bstrdup(message);
 else
  output->last_error_message = ((void*)0);
}
