
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {int dummy; } ;
typedef int RRDHOST ;


 int printf (char*,char*) ;

int __wrap_web_client_api_request_v1(RRDHOST *host, struct web_client *w, char *url)
{
    printf("api requests: %s\n", url);
}
