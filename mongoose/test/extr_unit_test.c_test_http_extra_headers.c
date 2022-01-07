
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* extra_headers; } ;


 int ASSERT (int ) ;
 int FETCH_BUF_SIZE ;
 int fetch_http (char*,char*,char*) ;
 TYPE_1__ s_http_server_opts ;
 int * strstr (char*,char const*) ;

__attribute__((used)) static const char *test_http_extra_headers(void) {
  char buf[FETCH_BUF_SIZE];
  const char *expect = "MyHdr: my_val\r\n";
  s_http_server_opts.extra_headers = "MyHdr: my_val";
  fetch_http(buf, "%s", "GET / HTTP/1.0\r\n\r\n");
  ASSERT(strstr(buf, expect) != ((void*)0));
  s_http_server_opts.extra_headers = ((void*)0);
  return ((void*)0);
}
