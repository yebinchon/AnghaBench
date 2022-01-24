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
struct TYPE_3__ {scalar_t__ ssl_in_use; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  SCRAM_SHA_256_NAME ; 
 int /*<<< orphan*/  SCRAM_SHA_256_PLUS_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(Port *port, StringInfo buf)
{
	/*
	 * Advertise the mechanisms in decreasing order of importance.  So the
	 * channel-binding variants go first, if they are supported.  Channel
	 * binding is only supported with SSL, and only if the SSL implementation
	 * has a function to get the certificate's hash.
	 */
#ifdef HAVE_BE_TLS_GET_CERTIFICATE_HASH
	if (port->ssl_in_use)
	{
		appendStringInfoString(buf, SCRAM_SHA_256_PLUS_NAME);
		appendStringInfoChar(buf, '\0');
	}
#endif
	FUNC1(buf, SCRAM_SHA_256_NAME);
	FUNC0(buf, '\0');
}