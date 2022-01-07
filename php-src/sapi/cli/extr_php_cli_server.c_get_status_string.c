
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int needle ;
struct TYPE_4__ {int member_0; char const* str; int * member_1; } ;
typedef TYPE_1__ http_response_status_code_pair ;


 TYPE_1__* bsearch (TYPE_1__*,int ,int ,int,int ) ;
 int http_status_map ;
 int http_status_map_len ;
 int status_comp ;

__attribute__((used)) static const char *get_status_string(int code)
{
 http_response_status_code_pair needle = {code, ((void*)0)},
  *result = ((void*)0);

 result = bsearch(&needle, http_status_map, http_status_map_len, sizeof(needle), status_comp);

 if (result) {
  return result->str;
 }





 return "Unknown Status Code";
}
