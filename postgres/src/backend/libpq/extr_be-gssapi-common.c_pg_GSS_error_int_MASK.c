#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC5(char *s, size_t len, OM_uint32 stat, int type)
{
	gss_buffer_desc gmsg;
	size_t		i = 0;
	OM_uint32	lmin_s,
				msg_ctx = 0;

	gmsg.value = NULL;
	gmsg.length = 0;

	do
	{
		FUNC2(&lmin_s, stat, type,
						   GSS_C_NO_OID, &msg_ctx, &gmsg);
		FUNC4(s + i, gmsg.value, len - i);
		i += gmsg.length;
		FUNC3(&lmin_s, &gmsg);
	}
	while (msg_ctx && i < len);

	if (msg_ctx || i == len)
		FUNC0(WARNING,
				(FUNC1("incomplete GSS error report")));
}