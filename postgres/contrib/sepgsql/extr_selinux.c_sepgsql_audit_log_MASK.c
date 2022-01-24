#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint32 ;
typedef  size_t uint16 ;
struct TYPE_9__ {char* class_name; TYPE_1__* av; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {char* av_name; } ;
typedef  TYPE_2__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG ; 
 size_t SEPG_CLASS_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_3__* selinux_catalog ; 

void
FUNC6(bool denied,
				  const char *scontext,
				  const char *tcontext,
				  uint16 tclass,
				  uint32 audited,
				  const char *audit_name)
{
	StringInfoData buf;
	const char *class_name;
	const char *av_name;
	int			i;

	/* lookup name of the object class */
	FUNC0(tclass < SEPG_CLASS_MAX);
	class_name = selinux_catalog[tclass].class_name;

	/* lookup name of the permissions */
	FUNC5(&buf);
	FUNC1(&buf, "%s {",
					 (denied ? "denied" : "allowed"));
	for (i = 0; selinux_catalog[tclass].av[i].av_name; i++)
	{
		if (audited & (1UL << i))
		{
			av_name = selinux_catalog[tclass].av[i].av_name;
			FUNC1(&buf, " %s", av_name);
		}
	}
	FUNC2(&buf, " }");

	/*
	 * Call external audit module, if loaded
	 */
	FUNC1(&buf, " scontext=%s tcontext=%s tclass=%s",
					 scontext, tcontext, class_name);
	if (audit_name)
		FUNC1(&buf, " name=\"%s\"", audit_name);

	FUNC3(LOG, (FUNC4("SELinux: %s", buf.data)));
}