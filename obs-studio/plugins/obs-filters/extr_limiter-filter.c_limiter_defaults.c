
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_RELEASE_TIME ;
 int S_THRESHOLD ;
 int obs_data_set_default_double (int *,int ,float) ;
 int obs_data_set_default_int (int *,int ,int) ;

__attribute__((used)) static void limiter_defaults(obs_data_t *s)
{
 obs_data_set_default_double(s, S_THRESHOLD, -6.0f);
 obs_data_set_default_int(s, S_RELEASE_TIME, 60);
}
