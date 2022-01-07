
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_stream ;
typedef int errbuf ;


 int json_error (int *,char*,char*) ;
 int strerror_r (int,char*,int) ;

__attribute__((used)) static void json_error_s(json_stream *json, int err)
{
    char errbuf[1024] = {0};
    strerror_r(err, errbuf, sizeof(errbuf));
    json_error(json, "%s", errbuf);
}
