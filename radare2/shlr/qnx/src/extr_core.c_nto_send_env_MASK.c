#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_1__ env; } ;
struct TYPE_10__ {TYPE_2__ pkt; } ;
struct TYPE_11__ {int target_proto_minor; TYPE_3__ tran; } ;
typedef  TYPE_4__ libqnxr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSMSG_ENV_SETENV ; 
 int /*<<< orphan*/  DSMSG_ENV_SETENV_MORE ; 
 int DS_DATA_MAX_SIZE ; 
 int /*<<< orphan*/  DStMsg_env ; 
 int /*<<< orphan*/  DStMsg_env_t ; 
 int /*<<< orphan*/  SET_CHANNEL_DEBUG ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC2 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

int FUNC6 (libqnxr_t *g, const char *env) {
	int len; /* Length including zero terminating char.  */
	int totlen = 0;

	if (!g) return 0;

	len = FUNC5 (env) + 1;
	if (g->target_proto_minor >= 2) {
		while (len > DS_DATA_MAX_SIZE) {
			FUNC3 (g, DStMsg_env, DSMSG_ENV_SETENV_MORE,
				       SET_CHANNEL_DEBUG);
			FUNC1 (g->tran.pkt.env.data, env + totlen,
				DS_DATA_MAX_SIZE);
			if (!FUNC2 (g, FUNC4 (DStMsg_env_t, data) +
						  DS_DATA_MAX_SIZE,
				       1)) {
				/* An error occured.  */
				return 0;
			}
			len -= DS_DATA_MAX_SIZE;
			totlen += DS_DATA_MAX_SIZE;
		}
	} else if (len > DS_DATA_MAX_SIZE) {
		/* Not supported by this protocol version.  */
		FUNC0 ("Protovers < 0.2 do not handle env vars longer than %d\n",
			 DS_DATA_MAX_SIZE - 1);
		return 0;
	}
	FUNC3 (g, DStMsg_env, DSMSG_ENV_SETENV, SET_CHANNEL_DEBUG);
	FUNC1 (g->tran.pkt.env.data, env + totlen, len);
	return FUNC2 (g, FUNC4 (DStMsg_env_t, data) + len, 1);
}