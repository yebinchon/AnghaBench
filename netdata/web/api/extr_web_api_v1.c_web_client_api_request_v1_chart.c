
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {int dummy; } ;
typedef int RRDHOST ;


 int rrd_stats_api_v1_chart ;
 int web_client_api_request_single_chart (int *,struct web_client*,char*,int ) ;

inline int web_client_api_request_v1_chart(RRDHOST *host, struct web_client *w, char *url) {
    return web_client_api_request_single_chart(host, w, url, rrd_stats_api_v1_chart);
}
