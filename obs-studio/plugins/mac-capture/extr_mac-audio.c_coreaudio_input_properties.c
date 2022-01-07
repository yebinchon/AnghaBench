
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int UNUSED_PARAMETER (void*) ;
 int * coreaudio_properties (int) ;

__attribute__((used)) static obs_properties_t *coreaudio_input_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 return coreaudio_properties(1);
}
