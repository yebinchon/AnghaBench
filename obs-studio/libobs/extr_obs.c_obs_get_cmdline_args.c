
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_cmdline_args {int dummy; } ;


 struct obs_cmdline_args cmdline_args ;

struct obs_cmdline_args obs_get_cmdline_args(void)
{
 return cmdline_args;
}
