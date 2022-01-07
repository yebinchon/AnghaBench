
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;
typedef int obs_data_t ;


 void* coreaudio_create (int *,int *,int) ;

__attribute__((used)) static void *coreaudio_create_output_capture(obs_data_t *settings,
          obs_source_t *source)
{
 return coreaudio_create(settings, source, 0);
}
