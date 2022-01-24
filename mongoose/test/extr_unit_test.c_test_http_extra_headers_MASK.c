#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* extra_headers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FETCH_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 TYPE_1__ s_http_server_opts ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const*) ; 

__attribute__((used)) static const char *FUNC3(void) {
  char buf[FETCH_BUF_SIZE];
  const char *expect = "MyHdr: my_val\r\n";
  s_http_server_opts.extra_headers = "MyHdr: my_val";
  FUNC1(buf, "%s", "GET / HTTP/1.0\r\n\r\n");
  FUNC0(FUNC2(buf, expect) != NULL);
  s_http_server_opts.extra_headers = NULL;
  return NULL;
}