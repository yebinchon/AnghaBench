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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {char* n_bytes; scalar_t__ n_len; } ;
typedef  TYPE_1__ netobj ;
typedef  int /*<<< orphan*/  des_block ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,TYPE_1__*,scalar_t__ const,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

AUTH *
FUNC3(const char *servername, const u_int win,
	const char *timehost, const des_block *ckey)
{
	u_char  pkey_data[1024];
	netobj  pkey;
	AUTH    *dummy;

	if (! FUNC1(servername, (char *) pkey_data)) {
		//syslog(LOG_ERR,
		//    "authdes_seccreate: no public key found for %s",
		//    servername);
		return (NULL);
	}

	pkey.n_bytes = (char *) pkey_data;
	pkey.n_len = (u_int)FUNC2((char *)pkey_data) + 1;
	dummy = FUNC0(servername, &pkey, win, timehost,
	    ckey, NULL);
	return (dummy);
}