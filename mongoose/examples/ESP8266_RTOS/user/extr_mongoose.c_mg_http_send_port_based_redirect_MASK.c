#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mg_str {int /*<<< orphan*/  p; scalar_t__ len; } ;
struct mg_serve_http_opts {char* url_rewrites; } ;
struct mg_connection {int dummy; } ;
struct TYPE_4__ {int p; } ;
struct TYPE_3__ {int p; } ;
struct http_message {TYPE_2__ uri; TYPE_1__ proto; } ;
typedef  int /*<<< orphan*/  local_port ;

/* Variables and functions */
 int /*<<< orphan*/  MG_SOCK_STRINGIFY_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,struct mg_str*,struct mg_str*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct mg_str*,char*) ; 

__attribute__((used)) static int FUNC5(
    struct mg_connection *c, struct http_message *hm,
    const struct mg_serve_http_opts *opts) {
  const char *rewrites = opts->url_rewrites;
  struct mg_str a, b;
  char local_port[20] = {'%'};

  FUNC0(c, local_port + 1, sizeof(local_port) - 1,
                      MG_SOCK_STRINGIFY_PORT);

  while ((rewrites = FUNC1(rewrites, &a, &b)) != NULL) {
    if (FUNC4(&a, local_port) == 0) {
      FUNC3(c, 301, NULL);
      FUNC2(c, "Content-Length: 0\r\nLocation: %.*s%.*s\r\n\r\n",
                (int) b.len, b.p, (int) (hm->proto.p - hm->uri.p - 1),
                hm->uri.p);
      return 1;
    }
  }

  return 0;
}