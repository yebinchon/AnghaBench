#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* val; } ;
typedef  TYPE_1__ PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,char const*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static PQconninfoOption *
FUNC7(PQconninfoOption *connOptions,
				  const char *keyword, const char *value,
				  PQExpBuffer errorMessage, bool ignoreMissing,
				  bool uri_decode)
{
	PQconninfoOption *option;
	char	   *value_copy;

	/*
	 * For backwards compatibility, requiressl=1 gets translated to
	 * sslmode=require, and requiressl=0 gets translated to sslmode=prefer
	 * (which is the default for sslmode).
	 */
	if (FUNC5(keyword, "requiressl") == 0)
	{
		keyword = "sslmode";
		if (value[0] == '1')
			value = "require";
		else
			value = "prefer";
	}

	option = FUNC0(connOptions, keyword);
	if (option == NULL)
	{
		if (!ignoreMissing)
			FUNC4(errorMessage,
							  FUNC3("invalid connection option \"%s\"\n"),
							  keyword);
		return NULL;
	}

	if (uri_decode)
	{
		value_copy = FUNC1(value, errorMessage);
		if (value_copy == NULL)
			/* conninfo_uri_decode already set an error message */
			return NULL;
	}
	else
	{
		value_copy = FUNC6(value);
		if (value_copy == NULL)
		{
			FUNC4(errorMessage, FUNC3("out of memory\n"));
			return NULL;
		}
	}

	if (option->val)
		FUNC2(option->val);
	option->val = value_copy;

	return option;
}