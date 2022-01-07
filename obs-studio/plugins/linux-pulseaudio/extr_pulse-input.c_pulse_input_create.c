
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;
typedef int obs_data_t ;


 void* pulse_create (int *,int *,int) ;

__attribute__((used)) static void *pulse_input_create(obs_data_t *settings, obs_source_t *source)
{
 return pulse_create(settings, source, 1);
}
