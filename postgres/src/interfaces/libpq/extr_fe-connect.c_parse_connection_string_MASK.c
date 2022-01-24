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
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static PQconninfoOption *
FUNC3(const char *connstr, PQExpBuffer errorMessage,
						bool use_defaults)
{
	/* Parse as URI if connection string matches URI prefix */
	if (FUNC2(connstr) != 0)
		return FUNC1(connstr, errorMessage, use_defaults);

	/* Parse as default otherwise */
	return FUNC0(connstr, errorMessage, use_defaults);
}