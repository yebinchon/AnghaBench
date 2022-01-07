
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_ATTACK_TIME ;
 int S_OUTPUT_GAIN ;
 int S_RATIO ;
 int S_RELEASE_TIME ;
 int S_SIDECHAIN_SOURCE ;
 int S_THRESHOLD ;
 int obs_data_set_default_double (int *,int ,float) ;
 int obs_data_set_default_int (int *,int ,int) ;
 int obs_data_set_default_string (int *,int ,char*) ;

__attribute__((used)) static void compressor_defaults(obs_data_t *s)
{
 obs_data_set_default_double(s, S_RATIO, 10.0f);
 obs_data_set_default_double(s, S_THRESHOLD, -18.0f);
 obs_data_set_default_int(s, S_ATTACK_TIME, 6);
 obs_data_set_default_int(s, S_RELEASE_TIME, 60);
 obs_data_set_default_double(s, S_OUTPUT_GAIN, 0.0f);
 obs_data_set_default_string(s, S_SIDECHAIN_SOURCE, "none");
}
