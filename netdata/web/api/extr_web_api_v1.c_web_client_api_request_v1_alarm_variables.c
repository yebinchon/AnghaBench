
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {int dummy; } ;
typedef int RRDHOST ;


 int health_api_v1_chart_variables2json ;
 int web_client_api_request_single_chart (int *,struct web_client*,char*,int ) ;

inline int web_client_api_request_v1_alarm_variables(RRDHOST *host, struct web_client *w, char *url) {
    return web_client_api_request_single_chart(host, w, url, health_api_v1_chart_variables2json);
}
