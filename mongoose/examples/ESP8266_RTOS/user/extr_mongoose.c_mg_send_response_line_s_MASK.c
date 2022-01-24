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
struct mg_str {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  mg_version_header ; 

void FUNC2(struct mg_connection *nc, int status_code,
                             const struct mg_str extra_headers) {
  FUNC0(nc, "HTTP/1.1 %d %s\r\n", status_code,
            FUNC1(status_code));
#ifndef MG_HIDE_SERVER_INFO
  FUNC0(nc, "Server: %s\r\n", mg_version_header);
#endif
  if (extra_headers.len > 0) {
    FUNC0(nc, "%.*s\r\n", (int) extra_headers.len, extra_headers.p);
  }
}