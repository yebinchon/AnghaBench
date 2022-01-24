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
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,char const*,unsigned long) ; 
 scalar_t__ FUNC1 () ; 

void FUNC2(struct mg_connection *c,
                                      const char *domain) {
  FUNC0(c,
            "HTTP/1.1 401 Unauthorized\r\n"
            "WWW-Authenticate: Digest qop=\"auth\", "
            "realm=\"%s\", nonce=\"%lx\"\r\n"
            "Content-Length: 0\r\n\r\n",
            domain, (unsigned long) FUNC1());
}