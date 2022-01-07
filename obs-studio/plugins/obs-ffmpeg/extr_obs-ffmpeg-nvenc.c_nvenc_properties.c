
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int UNUSED_PARAMETER (void*) ;
 int * nvenc_properties_internal (int) ;

obs_properties_t *nvenc_properties(void *unused)
{
 UNUSED_PARAMETER(unused);
 return nvenc_properties_internal(0);
}
