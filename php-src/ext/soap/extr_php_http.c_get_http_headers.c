
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {int * s; int member_0; } ;
typedef TYPE_1__ smart_str ;
typedef int php_stream ;
typedef int headerbuf ;


 scalar_t__ php_stream_gets (int *,char*,int) ;
 int smart_str_0 (TYPE_1__*) ;
 int smart_str_appends (TYPE_1__*,char*) ;
 int smart_str_free (TYPE_1__*) ;

__attribute__((used)) static zend_string *get_http_headers(php_stream *stream)
{
 smart_str tmp_response = {0};
 char headerbuf[8192];

 while (php_stream_gets(stream, headerbuf, sizeof(headerbuf))) {
  if ((headerbuf[0] == '\r' && headerbuf[1] == '\n') ||
      (headerbuf[0] == '\n')) {

   smart_str_0(&tmp_response);
   return tmp_response.s;
  }


  smart_str_appends(&tmp_response, headerbuf);
 }

 smart_str_free(&tmp_response);
 return ((void*)0);
}
