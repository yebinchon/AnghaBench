
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_ATTACK_TIME ;
 int S_CLOSE_THRESHOLD ;
 int S_HOLD_TIME ;
 int S_OPEN_THRESHOLD ;
 int S_RELEASE_TIME ;
 int obs_data_set_default_double (int *,int ,double) ;
 int obs_data_set_default_int (int *,int ,int) ;

__attribute__((used)) static void noise_gate_defaults(obs_data_t *s)
{
 obs_data_set_default_double(s, S_OPEN_THRESHOLD, -26.0);
 obs_data_set_default_double(s, S_CLOSE_THRESHOLD, -32.0);
 obs_data_set_default_int(s, S_ATTACK_TIME, 25);
 obs_data_set_default_int(s, S_HOLD_TIME, 200);
 obs_data_set_default_int(s, S_RELEASE_TIME, 150);
}
