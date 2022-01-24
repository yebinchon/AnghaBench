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
typedef  int /*<<< orphan*/  gss_name_t ;
struct TYPE_3__ {char* value; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  scalar_t__ bool_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC6(char *service)
{
	gss_name_t	name;
	gss_buffer_desc	namebuf;
	OM_uint32	maj_stat, min_stat;

	FUNC2("in svcauth_gss_import_name()");

	namebuf.value = service;
	namebuf.length = FUNC4(service);

	maj_stat = FUNC0(&min_stat, &namebuf,
				   (gss_OID)GSS_C_NT_HOSTBASED_SERVICE, &name);

	if (maj_stat != GSS_S_COMPLETE) {
		FUNC3("gss_import_name", maj_stat, min_stat);
		return (FALSE);
	}
	if (FUNC5(name) != TRUE) {
		FUNC1(&min_stat, &name);
		return (FALSE);
	}
	return (TRUE);
}