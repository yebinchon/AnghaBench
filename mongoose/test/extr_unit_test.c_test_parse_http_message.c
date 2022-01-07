
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mg_str {int p; int len; } ;
struct TYPE_9__ {int len; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_8__ {int len; } ;
struct http_message {TYPE_4__ body; TYPE_5__ resp_status_msg; int resp_code; TYPE_5__ proto; TYPE_5__ query_string; TYPE_5__ uri; TYPE_3__ message; TYPE_2__* header_names; TYPE_1__* header_values; } ;
struct TYPE_7__ {int len; int * p; } ;
struct TYPE_6__ {int p; int len; } ;


 int ASSERT (int ) ;
 int ASSERT_EQ (int ,int) ;
 int ASSERT_EQ64 (int ,size_t) ;
 int ASSERT_STREQ_NZ (int ,char*) ;
 int memcmp (int ,char*,int) ;
 struct mg_str* mg_get_http_header (struct http_message*,char*) ;
 int mg_parse_http (char const*,int,struct http_message*,int) ;
 int mg_vcmp (TYPE_5__*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *test_parse_http_message(void) {
  static const char *a = "GET / HTTP/1.0\n\n";
  static const char *b = "GET /blah HTTP/1.0\r\nFoo:  bar  \r\n\r\n";
  static const char *c = "get b c\nz:  k \nb: t\nvvv\n\n xx";
  static const char *d = "a b c\nContent-Length: 21 \nb: t\nvvv\n\n";
  static const char *e = "GET /foo?a=b&c=d HTTP/1.0\n\n";
  static const char *f = "POST /x HTTP/1.0\n\n";
  static const char *g = "WOHOO /x HTTP/1.0\n\n";
  static const char *h = "HTTP/1.0 200 OK\n\n";
  static const char *i = "HTTP/1.0 999 OMGWTFBBQ\n\n";
  static const char *j =
      "GET / HTTP/1.0\r\nHost: 127.0.0.1:18888\r\nCookie:\r\nX-PlayID: "
      "45455\r\nRange: 0-1\r\n\r\n";
  int idx, len;
  struct mg_str *v;
  struct http_message req;

  len = strlen(b);
  for (idx = 0; idx < len; idx++) {
    ASSERT_EQ(mg_parse_http(b, idx, &req, 1), 0);
  }

  ASSERT_EQ(mg_parse_http("\b23", 3, &req, 1), -1);
  ASSERT_EQ(mg_parse_http("\b23", 3, &req, 0), -1);
  ASSERT_EQ(mg_parse_http("get\n\n", 5, &req, 1), -1);
  ASSERT_EQ(mg_parse_http("get\n\n", 5, &req, 0), -1);
  ASSERT_EQ(mg_parse_http(a, strlen(a) - 1, &req, 1), 0);
  ASSERT_EQ(mg_parse_http(a, strlen(a), &req, 0), -1);

  ASSERT_EQ(mg_parse_http(a, strlen(a), &req, 1), (int) strlen(a));
  ASSERT_EQ(req.message.len, strlen(a));
  ASSERT_EQ(req.body.len, 0);

  ASSERT_EQ(mg_parse_http(b, strlen(b), &req, 0), -1);
  ASSERT_EQ(mg_parse_http(b, strlen(b), &req, 1), (int) strlen(b));
  ASSERT_EQ(req.header_names[0].len, 3);
  ASSERT_EQ(req.header_values[0].len, 3);
  ASSERT(req.header_names[1].p == ((void*)0));
  ASSERT_EQ(req.query_string.len, 0);
  ASSERT_EQ(req.message.len, strlen(b));
  ASSERT_EQ(req.body.len, 0);

  ASSERT_EQ(mg_parse_http(c, strlen(c), &req, 1), (int) strlen(c) - 3);
  ASSERT(req.header_names[2].p == ((void*)0));
  ASSERT(req.header_names[0].p != ((void*)0));
  ASSERT(req.header_names[1].p != ((void*)0));
  ASSERT_EQ(memcmp(req.header_values[1].p, "t", 1), 0);
  ASSERT_EQ(req.header_names[1].len, 1);
  ASSERT_EQ(req.body.len, 0);

  ASSERT_EQ(mg_parse_http(d, strlen(d), &req, 1), (int) strlen(d));
  ASSERT_EQ(req.body.len, 21);
  ASSERT_EQ(req.message.len, 21 + strlen(d));
  ASSERT(mg_get_http_header(&req, "foo") == ((void*)0));
  ASSERT((v = mg_get_http_header(&req, "contENT-Length")) != ((void*)0));
  ASSERT_EQ(v->len, 2);
  ASSERT_STREQ_NZ(v->p, "21");

  ASSERT_EQ(mg_parse_http(e, strlen(e), &req, 1), (int) strlen(e));
  ASSERT_EQ(mg_vcmp(&req.uri, "/foo"), 0);
  ASSERT_EQ(mg_vcmp(&req.query_string, "a=b&c=d"), 0);

  ASSERT_EQ(mg_parse_http(f, strlen(f), &req, 1), (int) strlen(f));
  ASSERT_EQ64(req.body.len, (size_t) ~0);

  ASSERT_EQ(mg_parse_http(g, strlen(g), &req, 1), (int) strlen(g));
  ASSERT_EQ(req.body.len, 0);

  ASSERT_EQ(mg_parse_http(h, strlen(h), &req, 0), (int) strlen(h));
  ASSERT_EQ(mg_vcmp(&req.proto, "HTTP/1.0"), 0);
  ASSERT_EQ(req.resp_code, 200);
  ASSERT_EQ(mg_vcmp(&req.resp_status_msg, "OK"), 0);
  ASSERT_EQ64(req.body.len, (size_t) ~0);

  ASSERT_EQ(mg_parse_http(i, strlen(i), &req, 0), -1);

  ASSERT_EQ(mg_parse_http(j, strlen(j), &req, 1), (int) strlen(j));
  ASSERT(mg_get_http_header(&req, "Host") != ((void*)0));
  ASSERT(mg_get_http_header(&req, "Cookie") == ((void*)0));
  ASSERT(mg_get_http_header(&req, "Range") != ((void*)0));

  return ((void*)0);
}
