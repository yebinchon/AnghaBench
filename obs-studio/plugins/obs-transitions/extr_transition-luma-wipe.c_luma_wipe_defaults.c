
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_LUMA_IMG ;
 int S_LUMA_INV ;
 int S_LUMA_SOFT ;
 int obs_data_set_default_bool (int *,int ,int) ;
 int obs_data_set_default_double (int *,int ,double) ;
 int obs_data_set_default_string (int *,int ,char*) ;

__attribute__((used)) static void luma_wipe_defaults(obs_data_t *settings)
{
 obs_data_set_default_string(settings, S_LUMA_IMG, "linear-h.png");
 obs_data_set_default_double(settings, S_LUMA_SOFT, 0.03);
 obs_data_set_default_bool(settings, S_LUMA_INV, 0);
}
