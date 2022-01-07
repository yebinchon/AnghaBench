
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int obs_source_t ;


 int data_valid (int *,char*) ;
 int get_base_height (int *) ;

uint32_t obs_source_get_base_height(obs_source_t *source)
{
 if (!data_valid(source, "obs_source_get_base_height"))
  return 0;

 return get_base_height(source);
}
