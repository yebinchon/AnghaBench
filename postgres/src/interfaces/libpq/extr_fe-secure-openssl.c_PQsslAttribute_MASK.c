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
typedef  int /*<<< orphan*/  sslbits_str ;
struct TYPE_3__ {int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

const char *
FUNC6(PGconn *conn, const char *attribute_name)
{
	if (!conn)
		return NULL;
	if (conn->ssl == NULL)
		return NULL;

	if (FUNC5(attribute_name, "library") == 0)
		return "OpenSSL";

	if (FUNC5(attribute_name, "key_bits") == 0)
	{
		static char sslbits_str[12];
		int			sslbits;

		FUNC1(conn->ssl, &sslbits);
		FUNC4(sslbits_str, sizeof(sslbits_str), "%d", sslbits);
		return sslbits_str;
	}

	if (FUNC5(attribute_name, "cipher") == 0)
		return FUNC0(conn->ssl);

	if (FUNC5(attribute_name, "compression") == 0)
		return FUNC2(conn->ssl) ? "on" : "off";

	if (FUNC5(attribute_name, "protocol") == 0)
		return FUNC3(conn->ssl);

	return NULL;				/* unknown attribute */
}