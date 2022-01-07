
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharpness_data {float sharpness; } ;
typedef int obs_data_t ;


 double obs_data_get_double (int *,char*) ;

__attribute__((used)) static void sharpness_update(void *data, obs_data_t *settings)
{
 struct sharpness_data *filter = data;
 double sharpness = obs_data_get_double(settings, "sharpness");

 filter->sharpness = (float)sharpness;
}
