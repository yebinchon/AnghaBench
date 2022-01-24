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
struct svc_rpc_gss_data {scalar_t__ client_name; int /*<<< orphan*/  cname; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  struct svc_rpc_gss_data SVCAUTH ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_NO_BUFFER ; 
 struct svc_rpc_gss_data* FUNC0 (struct svc_rpc_gss_data*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rpc_gss_data*,int) ; 

bool_t
FUNC6(SVCAUTH *auth)
{
	struct svc_rpc_gss_data	*gd;
	OM_uint32		 min_stat;

	FUNC4("in svcauth_gss_destroy()");

	gd = FUNC0(auth);

	FUNC1(&min_stat, &gd->ctx, GSS_C_NO_BUFFER);
	FUNC2(&min_stat, &gd->cname);

	if (gd->client_name)
		FUNC3(&min_stat, &gd->client_name);

	FUNC5(gd, sizeof(*gd));
	FUNC5(auth, sizeof(*auth));

	return (TRUE);
}