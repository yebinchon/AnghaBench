#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t whichhost; int /*<<< orphan*/  errorMessage; TYPE_1__* connhost; } ;
struct TYPE_4__ {char* host; } ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

int
FUNC8(PGconn *conn,
											 const char *namedata, size_t namelen,
											 char **store_name)
{
	char	   *name;
	int			result;
	char	   *host = conn->connhost[conn->whichhost].host;

	*store_name = NULL;

	if (!(host && host[0] != '\0'))
	{
		FUNC5(&conn->errorMessage,
						  FUNC1("host name must be specified\n"));
		return -1;
	}

	/*
	 * There is no guarantee the string returned from the certificate is
	 * NULL-terminated, so make a copy that is.
	 */
	name = FUNC2(namelen + 1);
	if (name == NULL)
	{
		FUNC5(&conn->errorMessage,
						  FUNC1("out of memory\n"));
		return -1;
	}
	FUNC3(name, namedata, namelen);
	name[namelen] = '\0';

	/*
	 * Reject embedded NULLs in certificate common or alternative name to
	 * prevent attacks like CVE-2009-4034.
	 */
	if (namelen != FUNC6(name))
	{
		FUNC0(name);
		FUNC5(&conn->errorMessage,
						  FUNC1("SSL certificate's name contains embedded null\n"));
		return -1;
	}

	if (FUNC4(name, host) == 0)
	{
		/* Exact name match */
		result = 1;
	}
	else if (FUNC7(name, host))
	{
		/* Matched wildcard name */
		result = 1;
	}
	else
	{
		result = 0;
	}

	*store_name = name;
	return result;
}