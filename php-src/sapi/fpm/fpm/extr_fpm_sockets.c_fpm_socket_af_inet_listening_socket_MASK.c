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
struct fpm_worker_pool_s {TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  listen_address; } ;

/* Variables and functions */
 int ZLOG_ALERT ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int FUNC0 (char*) ; 
 int FUNC1 (struct fpm_worker_pool_s*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct fpm_worker_pool_s *wp) /* {{{ */
{
	char *dup_address = FUNC3(wp->config->listen_address);
	char *port_str = FUNC5(dup_address, ':');
	char *addr = NULL;
	int addr_len;
	int port = 0;
	int sock = -1;

	if (port_str) { /* this is host:port pair */
		*port_str++ = '\0';
		port = FUNC0(port_str);
		addr = dup_address;

		/* strip brackets from address for getaddrinfo */
		addr_len = FUNC4(addr);
		if (addr[0] == '[' && addr[addr_len - 1] == ']') {
			addr[addr_len - 1] = '\0';
			addr++;
		}

	} else if (FUNC4(dup_address) == FUNC6(dup_address, "0123456789")) { /* this is port */
		port = FUNC0(dup_address);
		port_str = dup_address;
	}

	if (port == 0) {
		FUNC7(ZLOG_ERROR, "invalid port value '%s'", port_str);
		return -1;
	}

	if (addr) {
		/* Bind a specific address */
		sock = FUNC1(wp, addr, port_str);
	} else {
		/* Bind ANYADDR
		 *
		 * Try "::" first as that covers IPv6 ANYADDR and mapped IPv4 ANYADDR
		 * silencing warnings since failure is an option
		 *
		 * If that fails (because AF_INET6 is unsupported) retry with 0.0.0.0
		 */
		int old_level = FUNC8(ZLOG_ALERT);
		sock = FUNC1(wp, "::", port_str);
		FUNC8(old_level);

		if (sock < 0) {
			FUNC7(ZLOG_NOTICE, "Failed implicitly binding to ::, retrying with 0.0.0.0");
			sock = FUNC1(wp, "0.0.0.0", port_str);
		}
	}

	FUNC2(dup_address);

	return sock;
}