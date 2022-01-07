
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_int (int *,char*,int ) ;

__attribute__((used)) static void xshm_defaults(obs_data_t *defaults)
{
 obs_data_set_default_int(defaults, "screen", 0);
 obs_data_set_default_bool(defaults, "show_cursor", 1);
 obs_data_set_default_bool(defaults, "advanced", 0);
}
