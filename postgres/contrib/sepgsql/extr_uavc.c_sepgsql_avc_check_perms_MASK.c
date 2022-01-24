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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

bool
FUNC3(const ObjectAddress *tobject,
						uint16 tclass, uint32 required,
						const char *audit_name,
						bool abort_on_violation)
{
	char	   *tcontext = FUNC0(tobject, SEPGSQL_LABEL_TAG);
	bool		rc;

	rc = FUNC2(tcontext,
									   tclass, required,
									   audit_name, abort_on_violation);
	if (tcontext)
		FUNC1(tcontext);

	return rc;
}