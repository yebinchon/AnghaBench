
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int dummy; } ;


 int override_base_param (struct obs_x264*,int ,char**,char**,char**) ;

__attribute__((used)) static inline void override_base_params(struct obs_x264 *obsx264, char **params,
     char **preset, char **profile,
     char **tune)
{
 while (*params)
  override_base_param(obsx264, *(params++), preset, profile,
        tune);
}
