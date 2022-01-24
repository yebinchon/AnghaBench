#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mg_str {int /*<<< orphan*/  len; } ;
struct mg_serve_http_opts {char* url_rewrites; } ;
struct mg_connection {int dummy; } ;
struct http_message {struct mg_str uri; } ;

/* Variables and functions */
 struct mg_str FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,struct http_message*,struct mg_str,struct mg_str) ; 
 char* FUNC2 (char const*,struct mg_str*,struct mg_str*) ; 
 scalar_t__ FUNC3 (struct mg_str,struct mg_str,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mg_connection *nc,
                                     struct http_message *hm,
                                     const struct mg_serve_http_opts *opts) {
  const char *rewrites = opts->url_rewrites;
  struct mg_str a, b;
  struct mg_str p1 = FUNC0("http://"), p2 = FUNC0("https://");

  while ((rewrites = FUNC2(rewrites, &a, &b)) != NULL) {
    if (FUNC3(a, hm->uri, a.len) == 0) {
      if (FUNC3(b, p1, p1.len) == 0 || FUNC3(b, p2, p2.len) == 0) {
        FUNC1(nc, hm, a, b);
        return 1;
      }
    }
  }

  return 0;
}