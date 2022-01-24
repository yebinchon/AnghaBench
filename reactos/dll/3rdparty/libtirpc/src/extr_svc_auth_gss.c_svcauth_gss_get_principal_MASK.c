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
struct TYPE_2__ {size_t length; int /*<<< orphan*/  value; } ;
struct svc_rpc_gss_data {TYPE_1__ cname; } ;
typedef  int /*<<< orphan*/  SVCAUTH ;

/* Variables and functions */
 struct svc_rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

char *
FUNC3(SVCAUTH *auth)
{
	struct svc_rpc_gss_data *gd;
	char *pname;

	gd = FUNC0(auth);

	if (gd->cname.length == 0)
		return (NULL);

	if ((pname = FUNC1(gd->cname.length + 1)) == NULL)
		return (NULL);

	FUNC2(pname, gd->cname.value, gd->cname.length);
	pname[gd->cname.length] = '\0';

	return (pname);
}