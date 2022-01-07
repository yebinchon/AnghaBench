
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_stream ;


 int json_open_buffer (int *,char const*,int ) ;
 int strlen (char const*) ;

void json_open_string(json_stream *json, const char *string)
{
    json_open_buffer(json, string, strlen(string));
}
