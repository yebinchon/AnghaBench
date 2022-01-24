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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct av_decision {int allowed; int auditdeny; int auditallow; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int SELINUX_AVD_FLAGS_PERMISSIVE ; 
 scalar_t__ SEPGSQL_MODE_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,char const*,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ ,struct av_decision*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ sepgsql_mode ; 

bool
FUNC7(const char *scontext,
					const char *tcontext,
					uint16 tclass,
					uint32 required,
					const char *audit_name,
					bool abort_on_violation)
{
	struct av_decision avd;
	uint32		denied;
	uint32		audited;
	bool		result = true;

	FUNC4(scontext, tcontext, tclass, &avd);

	denied = required & ~avd.allowed;

	if (FUNC5())
		audited = (denied ? denied : required);
	else
		audited = (denied ? (denied & avd.auditdeny)
				   : (required & avd.auditallow));

	if (denied &&
		FUNC6() > 0 &&
		(avd.flags & SELINUX_AVD_FLAGS_PERMISSIVE) == 0)
		result = false;

	/*
	 * It records a security audit for the request, if needed. But, when
	 * SE-PgSQL performs 'internal' mode, it needs to keep silent.
	 */
	if (audited && sepgsql_mode != SEPGSQL_MODE_INTERNAL)
	{
		FUNC3(denied,
						  scontext,
						  tcontext,
						  tclass,
						  audited,
						  audit_name);
	}

	if (!result && abort_on_violation)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC2("SELinux: security policy violation")));
	return result;
}