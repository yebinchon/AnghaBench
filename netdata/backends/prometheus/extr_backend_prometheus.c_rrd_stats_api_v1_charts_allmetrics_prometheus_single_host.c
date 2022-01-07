
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int RRDHOST ;
typedef int PROMETHEUS_OUTPUT_OPTIONS ;
typedef int BUFFER ;
typedef int BACKEND_OPTIONS ;


 int now_realtime_sec () ;
 int prometheus_preparation (int *,int *,int ,char const*,int ,int ) ;
 int rrd_stats_api_v1_charts_allmetrics_prometheus (int *,int *,char const*,int ,int ,int ,int ,int ) ;

void rrd_stats_api_v1_charts_allmetrics_prometheus_single_host(RRDHOST *host, BUFFER *wb, const char *server, const char *prefix, BACKEND_OPTIONS backend_options, PROMETHEUS_OUTPUT_OPTIONS output_options) {
    time_t before = now_realtime_sec();


    time_t after = prometheus_preparation(host, wb, backend_options, server, before, output_options);

    rrd_stats_api_v1_charts_allmetrics_prometheus(host, wb, prefix, backend_options, after, before, 0, output_options);
}
