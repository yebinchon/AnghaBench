
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int UNUSED_PARAMETER (void*) ;
 int * pulse_properties (int) ;

__attribute__((used)) static obs_properties_t *pulse_output_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 return pulse_properties(0);
}
