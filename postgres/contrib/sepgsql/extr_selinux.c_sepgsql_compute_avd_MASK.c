#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  size_t uint16 ;
struct av_decision {int allowed; unsigned int auditallow; unsigned int auditdeny; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  security_context_t ;
typedef  scalar_t__ security_class_t ;
typedef  int access_vector_t ;
struct TYPE_4__ {size_t class_code; char* class_name; TYPE_1__* av; } ;
struct TYPE_3__ {char* av_name; int av_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 size_t SEPG_CLASS_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct av_decision*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct av_decision*) ; 
 int FUNC6 () ; 
 TYPE_2__* selinux_catalog ; 
 int FUNC7 (scalar_t__,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 

void
FUNC9(const char *scontext,
					const char *tcontext,
					uint16 tclass,
					struct av_decision *avd)
{
	const char *tclass_name;
	security_class_t tclass_ex;
	struct av_decision avd_ex;
	int			i,
				deny_unknown = FUNC6();

	/* Get external code of the object class */
	FUNC0(tclass < SEPG_CLASS_MAX);
	FUNC0(tclass == selinux_catalog[tclass].class_code);

	tclass_name = selinux_catalog[tclass].class_name;
	tclass_ex = FUNC8(tclass_name);

	if (tclass_ex == 0)
	{
		/*
		 * If the current security policy does not support permissions
		 * corresponding to database objects, we fill up them with dummy data.
		 * If security_deny_unknown() returns positive value, undefined
		 * permissions should be denied. Otherwise, allowed
		 */
		avd->allowed = (FUNC6() > 0 ? 0 : ~0);
		avd->auditallow = 0U;
		avd->auditdeny = ~0U;
		avd->flags = 0;

		return;
	}

	/*
	 * Ask SELinux what is allowed set of permissions on a pair of the
	 * security contexts and the given object class.
	 */
	if (FUNC5((security_context_t) scontext,
									  (security_context_t) tcontext,
									  tclass_ex, 0, &avd_ex) < 0)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INTERNAL_ERROR),
				 FUNC3("SELinux could not compute av_decision: "
						"scontext=%s tcontext=%s tclass=%s: %m",
						scontext, tcontext, tclass_name)));

	/*
	 * SELinux returns its access control decision as a set of permissions
	 * represented in external code which depends on run-time environment. So,
	 * we need to translate it to the internal representation before returning
	 * results for the caller.
	 */
	FUNC4(avd, 0, sizeof(struct av_decision));

	for (i = 0; selinux_catalog[tclass].av[i].av_name; i++)
	{
		access_vector_t av_code_ex;
		const char *av_name = selinux_catalog[tclass].av[i].av_name;
		uint32		av_code = selinux_catalog[tclass].av[i].av_code;

		av_code_ex = FUNC7(tclass_ex, av_name);
		if (av_code_ex == 0)
		{
			/* fill up undefined permissions */
			if (!deny_unknown)
				avd->allowed |= av_code;
			avd->auditdeny |= av_code;

			continue;
		}

		if (avd_ex.allowed & av_code_ex)
			avd->allowed |= av_code;
		if (avd_ex.auditallow & av_code_ex)
			avd->auditallow |= av_code;
		if (avd_ex.auditdeny & av_code_ex)
			avd->auditdeny |= av_code;
	}

	return;
}