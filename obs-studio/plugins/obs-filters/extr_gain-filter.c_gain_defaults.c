
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_GAIN_DB ;
 int obs_data_set_default_double (int *,int ,float) ;

__attribute__((used)) static void gain_defaults(obs_data_t *s)
{
 obs_data_set_default_double(s, S_GAIN_DB, 0.0f);
}
