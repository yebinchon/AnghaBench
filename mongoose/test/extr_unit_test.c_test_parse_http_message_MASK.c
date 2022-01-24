#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mg_str {int /*<<< orphan*/  p; int /*<<< orphan*/  len; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; } ;
struct TYPE_10__ {int /*<<< orphan*/  len; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; } ;
struct http_message {TYPE_4__ body; TYPE_5__ resp_status_msg; int /*<<< orphan*/  resp_code; TYPE_5__ proto; TYPE_5__ query_string; TYPE_5__ uri; TYPE_3__ message; TYPE_2__* header_names; TYPE_1__* header_values; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * p; } ;
struct TYPE_6__ {int /*<<< orphan*/  p; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct mg_str* FUNC5 (struct http_message*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,struct http_message*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static const char *FUNC9(void) {
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

  len = FUNC8(b);
  for (idx = 0; idx < len; idx++) {
    FUNC1(FUNC6(b, idx, &req, 1), 0);
  }

  FUNC1(FUNC6("\b23", 3, &req, 1), -1);
  FUNC1(FUNC6("\b23", 3, &req, 0), -1);
  FUNC1(FUNC6("get\n\n", 5, &req, 1), -1);
  FUNC1(FUNC6("get\n\n", 5, &req, 0), -1);
  FUNC1(FUNC6(a, FUNC8(a) - 1, &req, 1), 0);
  FUNC1(FUNC6(a, FUNC8(a), &req, 0), -1);

  FUNC1(FUNC6(a, FUNC8(a), &req, 1), (int) FUNC8(a));
  FUNC1(req.message.len, FUNC8(a));
  FUNC1(req.body.len, 0);

  FUNC1(FUNC6(b, FUNC8(b), &req, 0), -1);
  FUNC1(FUNC6(b, FUNC8(b), &req, 1), (int) FUNC8(b));
  FUNC1(req.header_names[0].len, 3);
  FUNC1(req.header_values[0].len, 3);
  FUNC0(req.header_names[1].p == NULL);
  FUNC1(req.query_string.len, 0);
  FUNC1(req.message.len, FUNC8(b));
  FUNC1(req.body.len, 0);

  FUNC1(FUNC6(c, FUNC8(c), &req, 1), (int) FUNC8(c) - 3);
  FUNC0(req.header_names[2].p == NULL);
  FUNC0(req.header_names[0].p != NULL);
  FUNC0(req.header_names[1].p != NULL);
  FUNC1(FUNC4(req.header_values[1].p, "t", 1), 0);
  FUNC1(req.header_names[1].len, 1);
  FUNC1(req.body.len, 0);

  FUNC1(FUNC6(d, FUNC8(d), &req, 1), (int) FUNC8(d));
  FUNC1(req.body.len, 21);
  FUNC1(req.message.len, 21 + FUNC8(d));
  FUNC0(FUNC5(&req, "foo") == NULL);
  FUNC0((v = FUNC5(&req, "contENT-Length")) != NULL);
  FUNC1(v->len, 2);
  FUNC3(v->p, "21");

  FUNC1(FUNC6(e, FUNC8(e), &req, 1), (int) FUNC8(e));
  FUNC1(FUNC7(&req.uri, "/foo"), 0);
  FUNC1(FUNC7(&req.query_string, "a=b&c=d"), 0);

  FUNC1(FUNC6(f, FUNC8(f), &req, 1), (int) FUNC8(f));
  FUNC2(req.body.len, (size_t) ~0);

  FUNC1(FUNC6(g, FUNC8(g), &req, 1), (int) FUNC8(g));
  FUNC1(req.body.len, 0);

  FUNC1(FUNC6(h, FUNC8(h), &req, 0), (int) FUNC8(h));
  FUNC1(FUNC7(&req.proto, "HTTP/1.0"), 0);
  FUNC1(req.resp_code, 200);
  FUNC1(FUNC7(&req.resp_status_msg, "OK"), 0);
  FUNC2(req.body.len, (size_t) ~0);

  FUNC1(FUNC6(i, FUNC8(i), &req, 0), -1);

  FUNC1(FUNC6(j, FUNC8(j), &req, 1), (int) FUNC8(j));
  FUNC0(FUNC5(&req, "Host") != NULL);
  FUNC0(FUNC5(&req, "Cookie") == NULL);
  FUNC0(FUNC5(&req, "Range") != NULL);

  return NULL;
}