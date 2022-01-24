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
typedef  int /*<<< orphan*/  bool_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * _svcauth_gss_creds ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool_t
FUNC3(void)
{
	OM_uint32	maj_stat, min_stat;

	FUNC1("in svcauth_gss_release_cred()");

	maj_stat = FUNC0(&min_stat, &_svcauth_gss_creds);

	if (maj_stat != GSS_S_COMPLETE) {
		FUNC2("gss_release_cred", maj_stat, min_stat);
		return (FALSE);
	}

	_svcauth_gss_creds = NULL;

	return (TRUE);
}