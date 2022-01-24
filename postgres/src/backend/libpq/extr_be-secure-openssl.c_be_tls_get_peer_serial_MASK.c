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
struct TYPE_3__ {scalar_t__ peer; } ;
typedef  TYPE_1__ Port ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

void
FUNC6(Port *port, char *ptr, size_t len)
{
	if (port->peer)
	{
		ASN1_INTEGER *serial;
		BIGNUM	   *b;
		char	   *decimal;

		serial = FUNC4(port->peer);
		b = FUNC0(serial, NULL);
		decimal = FUNC1(b);

		FUNC2(b);
		FUNC5(ptr, decimal, len);
		FUNC3(decimal);
	}
	else
		ptr[0] = '\0';
}