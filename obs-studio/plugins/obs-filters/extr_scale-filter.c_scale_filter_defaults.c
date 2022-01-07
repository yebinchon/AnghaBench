
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_RESOLUTION ;
 int S_SAMPLING ;
 int S_SAMPLING_BICUBIC ;
 int S_UNDISTORT ;
 int T_NONE ;
 int obs_data_set_default_bool (int *,int ,int ) ;
 int obs_data_set_default_string (int *,int ,int ) ;

__attribute__((used)) static void scale_filter_defaults(obs_data_t *settings)
{
 obs_data_set_default_string(settings, S_SAMPLING, S_SAMPLING_BICUBIC);
 obs_data_set_default_string(settings, S_RESOLUTION, T_NONE);
 obs_data_set_default_bool(settings, S_UNDISTORT, 0);
}
