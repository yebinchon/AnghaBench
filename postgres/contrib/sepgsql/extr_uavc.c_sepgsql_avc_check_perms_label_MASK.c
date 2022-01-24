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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_3__ {int allowed; int auditdeny; int auditallow; char const* tcontext; int /*<<< orphan*/  tclass; scalar_t__ tcontext_is_valid; int /*<<< orphan*/  scontext; scalar_t__ permissive; } ;
typedef  TYPE_1__ avc_cache ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 char const* SEPGSQL_AVC_NOAUDIT ; 
 scalar_t__ SEPGSQL_MODE_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC6 () ; 
 char* FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

bool
FUNC11(const char *tcontext,
							  uint16 tclass, uint32 required,
							  const char *audit_name,
							  bool abort_on_violation)
{
	char	   *scontext = FUNC7();
	avc_cache  *cache;
	uint32		denied;
	uint32		audited;
	bool		result;

	FUNC4();
	do
	{
		result = true;

		/*
		 * If the target object is unlabeled, we perform the check using the
		 * label supplied by sepgsql_avc_unlabeled().
		 */
		if (tcontext)
			cache = FUNC5(scontext, tcontext, tclass);
		else
			cache = FUNC5(scontext,
									   FUNC6(), tclass);

		denied = required & ~cache->allowed;

		/*
		 * Compute permissions to be audited
		 */
		if (FUNC8())
			audited = (denied ? (denied & ~0) : (required & ~0));
		else
			audited = denied ? (denied & cache->auditdeny)
				: (required & cache->auditallow);

		if (denied)
		{
			/*
			 * In permissive mode or permissive domain, violated permissions
			 * shall be audited to the log files at once, and then implicitly
			 * allowed to avoid a flood of access denied logs, because the
			 * purpose of permissive mode/domain is to collect a violation log
			 * that will make it possible to fix up the security policy.
			 */
			if (!FUNC10() || cache->permissive)
				cache->allowed |= required;
			else
				result = false;
		}
	} while (!FUNC4());

	/*
	 * In the case when we have something auditable actions here,
	 * sepgsql_audit_log shall be called with text representation of security
	 * labels for both of subject and object. It records this access
	 * violation, so DBA will be able to find out unexpected security problems
	 * later.
	 */
	if (audited != 0 &&
		audit_name != SEPGSQL_AVC_NOAUDIT &&
		FUNC9() != SEPGSQL_MODE_INTERNAL)
	{
		FUNC3(denied != 0,
						  cache->scontext,
						  cache->tcontext_is_valid ?
						  cache->tcontext : FUNC6(),
						  cache->tclass,
						  audited,
						  audit_name);
	}

	if (abort_on_violation && !result)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC2("SELinux: security policy violation")));

	return result;
}