#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16 ;
typedef  int /*<<< orphan*/  security_context_t ;
typedef  int /*<<< orphan*/  security_class_t ;
struct TYPE_2__ {char* class_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t SEPG_CLASS_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* selinux_catalog ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

char *
FUNC11(const char *scontext,
					   const char *tcontext,
					   uint16 tclass,
					   const char *objname)
{
	security_context_t ncontext;
	security_class_t tclass_ex;
	const char *tclass_name;
	char	   *result;

	/* Get external code of the object class */
	FUNC0(tclass < SEPG_CLASS_MAX);

	tclass_name = selinux_catalog[tclass].class_name;
	tclass_ex = FUNC10(tclass_name);

	/*
	 * Ask SELinux what is the default context for the given object class on a
	 * pair of security contexts
	 */
	if (FUNC9((security_context_t) scontext,
										 (security_context_t) tcontext,
										 tclass_ex,
										 objname,
										 &ncontext) < 0)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INTERNAL_ERROR),
				 FUNC6("SELinux could not compute a new context: "
						"scontext=%s tcontext=%s tclass=%s: %m",
						scontext, tcontext, tclass_name)));

	/*
	 * libselinux returns malloc()'ed string, so we need to copy it on the
	 * palloc()'ed region.
	 */
	FUNC3();
	{
		result = FUNC8(ncontext);
	}
	FUNC2();
	{
		FUNC7(ncontext);
	}
	FUNC1();

	return result;
}