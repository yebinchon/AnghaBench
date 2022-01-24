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
struct rpc_gss_data {scalar_t__ name; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;
typedef  struct rpc_gss_data AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (struct rpc_gss_data*) ; 
 scalar_t__ GSS_C_NO_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_gss_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_gss_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(AUTH *auth)
{
	struct rpc_gss_data	*gd;
	OM_uint32		 min_stat;

	FUNC5("in authgss_destroy()");

	gd = FUNC0(auth);

	FUNC1(auth);

#ifdef DEBUG
	fprintf(stderr, "authgss_destroy: freeing name %p\n", gd->name);
#endif
	if (gd->name != GSS_C_NO_NAME)
		FUNC4(&min_stat, &gd->name);

	FUNC3(gd);
	FUNC3(auth);
}