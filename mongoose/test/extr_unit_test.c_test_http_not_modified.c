
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct http_message {int dummy; } ;
struct TYPE_3__ {int st_size; scalar_t__ st_mtime; } ;
typedef TYPE_1__ cs_stat_t ;


 int ASSERT (int) ;
 scalar_t__ mg_is_not_modified (struct http_message*,TYPE_1__*) ;
 scalar_t__ mg_parse_http (char const*,int ,struct http_message*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *test_http_not_modified(void) {
  struct http_message hm;
  cs_stat_t st;
  const char *req1 =
      "GET / HTTP/1.0\nIf-None-Match: \"0.123\"\n"
      "If-Modified-Since: Tue 17 Nov 2015 21:01:56 GMT\n\n";
  const char *req4 =
      "GET / HTTP/1.0\nIf-None-Match: \"0.7\"\n"
      "If-Modified-Since: Tue 17 Nov 2015 21:01:56 GMT\n\n";
  const char *req2 =
      "GET / HTTP/1.0\n"
      "If-Modified-Since: Tue 17 Nov 2015 21:01:56 GMT\n\n";
  const char *req3 = "GET / HTTP/1.0\n\n";

  st.st_size = 7;
  st.st_mtime = (time_t) 0;


  ASSERT(mg_parse_http(req1, strlen(req1), &hm, 1) > 0);
  ASSERT(mg_is_not_modified(&hm, &st) == 0);


  ASSERT(mg_parse_http(req2, strlen(req2), &hm, 1) > 0);
  ASSERT(mg_is_not_modified(&hm, &st) != 0);

  ASSERT(mg_parse_http(req3, strlen(req3), &hm, 1) > 0);
  ASSERT(mg_is_not_modified(&hm, &st) == 0);

  ASSERT(mg_parse_http(req4, strlen(req4), &hm, 1) > 0);
  ASSERT(mg_is_not_modified(&hm, &st) != 0);

  return ((void*)0);
}
