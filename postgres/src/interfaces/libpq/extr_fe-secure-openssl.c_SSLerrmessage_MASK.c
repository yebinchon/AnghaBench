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

/* Variables and functions */
 char* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  SSL_ERR_LEN ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 
 char* ssl_nomem ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5(unsigned long ecode)
{
	const char *errreason;
	char	   *errbuf;

	errbuf = FUNC2(SSL_ERR_LEN);
	if (!errbuf)
		return ssl_nomem;
	if (ecode == 0)
	{
		FUNC3(errbuf, SSL_ERR_LEN, FUNC1("no SSL error reported"));
		return errbuf;
	}
	errreason = FUNC0(ecode);
	if (errreason != NULL)
	{
		FUNC4(errbuf, errreason, SSL_ERR_LEN);
		return errbuf;
	}
	FUNC3(errbuf, SSL_ERR_LEN, FUNC1("SSL error code %lu"), ecode);
	return errbuf;
}