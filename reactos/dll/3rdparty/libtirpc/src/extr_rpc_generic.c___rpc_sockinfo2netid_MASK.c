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
struct netid_af {int dummy; } ;
struct netconfig {int dummy; } ;
struct __rpc_sockinfo {scalar_t__ si_af; scalar_t__ si_proto; } ;
struct TYPE_2__ {scalar_t__ af; scalar_t__ protocol; char* netid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netconfig*) ; 
 struct netconfig* FUNC1 (char*) ; 
 TYPE_1__* na_cvt ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int
FUNC3(struct __rpc_sockinfo *sip, const char **netid)
{
	int i;
	struct netconfig *nconf;

	nconf = FUNC1("local");

	for (i = 0; i < (sizeof na_cvt) / (sizeof (struct netid_af)); i++) {
		if (na_cvt[i].af == sip->si_af &&
		    na_cvt[i].protocol == sip->si_proto) {
			if (FUNC2(na_cvt[i].netid, "local") == 0 && nconf == NULL) {
				if (netid)
					*netid = "unix";
			} else {
				if (netid)
					*netid = na_cvt[i].netid;
			}
			if (nconf != NULL)
				FUNC0(nconf);
			return 1;
		}
	}
	if (nconf != NULL)
		FUNC0(nconf);

	return 0;
}