
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int OPT_BIND_IP ;
 int OPT_DROP_THRESHOLD ;
 int OPT_LOWLATENCY_ENABLED ;
 int OPT_MAX_SHUTDOWN_TIME_SEC ;
 int OPT_NEWSOCKETLOOP_ENABLED ;
 int OPT_PFRAME_DROP_THRESHOLD ;
 int obs_data_set_default_bool (int *,int ,int) ;
 int obs_data_set_default_int (int *,int ,int) ;
 int obs_data_set_default_string (int *,int ,char*) ;

__attribute__((used)) static void rtmp_stream_defaults(obs_data_t *defaults)
{
 obs_data_set_default_int(defaults, OPT_DROP_THRESHOLD, 700);
 obs_data_set_default_int(defaults, OPT_PFRAME_DROP_THRESHOLD, 900);
 obs_data_set_default_int(defaults, OPT_MAX_SHUTDOWN_TIME_SEC, 30);
 obs_data_set_default_string(defaults, OPT_BIND_IP, "default");
 obs_data_set_default_bool(defaults, OPT_NEWSOCKETLOOP_ENABLED, 0);
 obs_data_set_default_bool(defaults, OPT_LOWLATENCY_ENABLED, 0);
}
