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
struct rpc_sspi_data {scalar_t__ name; struct rpc_sspi_data* sec; int /*<<< orphan*/  cred; } ;
typedef  struct rpc_sspi_data AUTH ;

/* Variables and functions */
 struct rpc_sspi_data* FUNC0 (struct rpc_sspi_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SSPI_C_NO_NAME ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_sspi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_sspi_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  min_stat ; 

__attribute__((used)) static void
FUNC6(AUTH *auth)
{
	struct rpc_sspi_data *gd;

	FUNC5("in authgss_destroy()");

	gd = FUNC0(auth);
    if (gd == NULL) return;

	FUNC2(auth);

#if 0
    if (gd->name != SSPI_C_NO_NAME)
		gss_release_name(&min_stat, &gd->name);
#else
    FUNC3(gd->name);
#endif
    FUNC1(&gd->sec->cred);
    FUNC3(gd->sec);
	FUNC3(gd);
	FUNC3(auth);
}