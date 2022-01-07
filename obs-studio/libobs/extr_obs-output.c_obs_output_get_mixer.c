
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_output_t ;


 size_t get_first_mixer (int const*) ;
 int obs_output_valid (int const*,char*) ;

size_t obs_output_get_mixer(const obs_output_t *output)
{
 if (!obs_output_valid(output, "obs_output_get_mixer"))
  return 0;

 return get_first_mixer(output);
}
