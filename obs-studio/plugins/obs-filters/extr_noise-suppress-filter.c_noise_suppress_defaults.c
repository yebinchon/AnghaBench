
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_SUPPRESS_LEVEL ;
 int obs_data_set_default_int (int *,int ,int) ;

__attribute__((used)) static void noise_suppress_defaults(obs_data_t *s)
{
 obs_data_set_default_int(s, S_SUPPRESS_LEVEL, -30);
}
