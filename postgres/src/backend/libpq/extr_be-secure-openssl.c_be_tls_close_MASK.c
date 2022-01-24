#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ssl_in_use; int /*<<< orphan*/ * peer_cn; int /*<<< orphan*/ * peer; int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(Port *port)
{
	if (port->ssl)
	{
		FUNC1(port->ssl);
		FUNC0(port->ssl);
		port->ssl = NULL;
		port->ssl_in_use = false;
	}

	if (port->peer)
	{
		FUNC2(port->peer);
		port->peer = NULL;
	}

	if (port->peer_cn)
	{
		FUNC3(port->peer_cn);
		port->peer_cn = NULL;
	}
}