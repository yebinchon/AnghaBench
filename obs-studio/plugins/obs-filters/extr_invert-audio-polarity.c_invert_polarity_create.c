
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void obs_source_t ;
typedef int obs_data_t ;


 int UNUSED_PARAMETER (int *) ;

__attribute__((used)) static void *invert_polarity_create(obs_data_t *settings, obs_source_t *filter)
{
 UNUSED_PARAMETER(settings);
 return filter;
}
