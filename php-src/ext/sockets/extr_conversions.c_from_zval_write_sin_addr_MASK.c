#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ ser_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC6(const zval *zaddr_str, char *inaddr, ser_context *ctx)
{
	int					res;
	struct sockaddr_in	saddr = {0};
	zend_string			*addr_str, *tmp_addr_str;

	addr_str = FUNC5((zval *) zaddr_str, &tmp_addr_str);
	res = FUNC3(&saddr, FUNC0(addr_str), ctx->sock);
	if (res) {
		FUNC2(inaddr, &saddr.sin_addr, sizeof saddr.sin_addr);
	} else {
		/* error already emitted, but let's emit another more relevant */
		FUNC1(ctx, "could not resolve address '%s' to get an AF_INET "
				"address", FUNC0(addr_str));
	}

	FUNC4(tmp_addr_str);
}