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
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct mg_connection *nc, const char *path,
                                  const char *host, const char *protocol,
                                  const char *extra_headers) {
  FUNC0(nc, path, host, protocol, extra_headers, NULL,
                               NULL);
}