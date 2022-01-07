
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_qsv {int params; int context; } ;
typedef int obs_data_t ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int g_QsvCs ;
 int qsv_encoder_reconfig (int ,int *) ;
 int update_settings (struct obs_qsv*,int *) ;
 int warn (char*,int) ;

__attribute__((used)) static bool obs_qsv_update(void *data, obs_data_t *settings)
{
 struct obs_qsv *obsqsv = data;
 bool success = update_settings(obsqsv, settings);
 int ret;

 if (success) {
  EnterCriticalSection(&g_QsvCs);

  ret = qsv_encoder_reconfig(obsqsv->context, &obsqsv->params);
  if (ret != 0)
   warn("Failed to reconfigure: %d", ret);

  LeaveCriticalSection(&g_QsvCs);

  return ret == 0;
 }

 return 0;
}
