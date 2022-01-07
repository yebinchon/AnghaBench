
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smart_str ;


 int get_status_string (int) ;
 int smart_str_append_long_ex (int *,int,int) ;
 int smart_str_appendc_ex (int *,char,int) ;
 int smart_str_appendl_ex (int *,char*,int,int) ;
 int smart_str_appends_ex (int *,int ,int) ;

__attribute__((used)) static void append_http_status_line(smart_str *buffer, int protocol_version, int response_code, int persistent)
{
 if (!response_code) {
  response_code = 200;
 }
 smart_str_appendl_ex(buffer, "HTTP", 4, persistent);
 smart_str_appendc_ex(buffer, '/', persistent);
 smart_str_append_long_ex(buffer, protocol_version / 100, persistent);
 smart_str_appendc_ex(buffer, '.', persistent);
 smart_str_append_long_ex(buffer, protocol_version % 100, persistent);
 smart_str_appendc_ex(buffer, ' ', persistent);
 smart_str_append_long_ex(buffer, response_code, persistent);
 smart_str_appendc_ex(buffer, ' ', persistent);
 smart_str_appends_ex(buffer, get_status_string(response_code), persistent);
 smart_str_appendl_ex(buffer, "\r\n", 2, persistent);
}
