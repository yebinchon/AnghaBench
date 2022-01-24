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

/* Variables and functions */
 int /*<<< orphan*/  ECPG_COMPAT_PGSQL ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int,char const*,char,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,long,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,long,long,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECPGt_EOIT ; 
 int /*<<< orphan*/  ECPGt_EORT ; 
 int /*<<< orphan*/  ECPGt_NO_INDICATOR ; 
 int /*<<< orphan*/  ECPGt_descriptor ; 

bool
FUNC1(int line, const char *connection,
				  const char *descriptor, const char *query)
{
	return FUNC0(line, ECPG_COMPAT_PGSQL, true, connection, '\0', 0, query, ECPGt_EOIT,
				  ECPGt_descriptor, descriptor, 0L, 0L, 0L,
				  ECPGt_NO_INDICATOR, NULL, 0L, 0L, 0L, ECPGt_EORT);
}