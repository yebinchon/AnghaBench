
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_qsv {int dummy; } ;
typedef int obs_data_t ;


 int update_params (struct obs_qsv*,int *) ;

__attribute__((used)) static bool update_settings(struct obs_qsv *obsqsv, obs_data_t *settings)
{
 update_params(obsqsv, settings);
 return 1;
}
