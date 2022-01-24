#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_7__ {int /*<<< orphan*/  sock; TYPE_1__* server; } ;
typedef  TYPE_2__ php_cli_server_client ;
struct TYPE_6__ {int /*<<< orphan*/  poller; } ;

/* Variables and functions */
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(zval *zv) /* {{{ */
{
	php_cli_server_client *p = FUNC0(zv);

	FUNC5(p->sock, SHUT_RDWR);
	FUNC1(p->sock);
	FUNC4(&p->server->poller, POLLIN | POLLOUT, p->sock);
	FUNC3(p);
	FUNC2(p, 1);
}