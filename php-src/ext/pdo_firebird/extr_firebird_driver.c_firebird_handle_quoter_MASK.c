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
typedef  int /*<<< orphan*/  pdo_dbh_t ;
typedef  enum pdo_param_type { ____Placeholder_pdo_param_type } pdo_param_type ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(pdo_dbh_t *dbh, const char *unquoted, size_t unquotedlen, /* {{{ */
	char **quoted, size_t *quotedlen, enum pdo_param_type paramtype)
{
	int qcount = 0;
	char const *co, *l, *r;
	char *c;

	if (!unquotedlen) {
		*quotedlen = 2;
		*quoted = FUNC0(*quotedlen+1);
		FUNC2(*quoted, "''");
		return 1;
	}

	/* Firebird only requires single quotes to be doubled if string lengths are used */
	/* count the number of ' characters */
	for (co = unquoted; (co = FUNC1(co,'\'')); qcount++, co++);

	*quotedlen = unquotedlen + qcount + 2;
	*quoted = c = FUNC0(*quotedlen+1);
	*c++ = '\'';

	/* foreach (chunk that ends in a quote) */
	for (l = unquoted; (r = FUNC1(l,'\'')); l = r+1) {
		FUNC3(c, l, r-l+1);
		c += (r-l+1);
		/* add the second quote */
		*c++ = '\'';
	}

	/* copy the remainder */
	FUNC3(c, l, *quotedlen-(c-*quoted)-1);
	(*quoted)[*quotedlen-1] = '\'';
	(*quoted)[*quotedlen]   = '\0';

	return 1;
}