#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; unsigned char* data; } ;
struct t_server {unsigned char index; TYPE_1__ s; } ;
struct t_num {unsigned char len; unsigned char* data; } ;
struct TYPE_5__ {unsigned char* username; unsigned char* key; } ;
typedef  TYPE_2__ TSRP_SESSION ;

/* Variables and functions */
 int MAXPARAMLEN ; 
 int MAXUSERLEN ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int RESPONSE_LEN ; 
 int SESSION_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int FUNC1 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct t_server*) ; 
 struct t_num* FUNC5 (struct t_server*) ; 
 unsigned char* FUNC6 (struct t_server*,struct t_num*) ; 
 struct t_server* FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (struct t_server*) ; 
 scalar_t__ FUNC9 (struct t_server*,unsigned char*) ; 

int FUNC10(int s, TSRP_SESSION *tsrp)
{
	int i, j;
	unsigned char username[MAXUSERLEN], *skey;
	unsigned char msgbuf[MAXPARAMLEN + 1], abuf[MAXPARAMLEN];
	struct t_server *ts;
	struct t_num A, *B;

	/* Get the username. */

	i = FUNC1(s, msgbuf, 1, 0);
	if (i <= 0) {
		return 0;
	}
	j = msgbuf[0];
	i = FUNC1(s, username, j, MSG_WAITALL);
	if (i <= 0) {
		return 0;
	}
	username[j] = '\0';

	ts = FUNC7(username);
	if (ts == NULL) {
		return 0;
	}

	/* Send the prime index and the salt. */

	msgbuf[0] = ts->index;                  /* max 256 primes... */
	i = ts->s.len;
	msgbuf[1] = i;
	FUNC0(msgbuf + 2, ts->s.data, i);
	if (FUNC2(s, msgbuf, i + 2, 0) < 0) {
		return 0;
	}

	/* Calculate B while we're waiting. */

	B = FUNC5(ts);

	/* Get A from the client. */

	i = FUNC1(s, msgbuf, 1, 0);
	if (i <= 0) {
		return 0;
	}
	A.len = msgbuf[0] + 1;
	A.data = abuf;
	i = FUNC1(s, abuf, A.len, MSG_WAITALL);
	if (i <= 0) {
		return 0;
	}

	/* Now send B. */

	msgbuf[0] = B->len - 1;
	FUNC0(msgbuf + 1, B->data, B->len);
	if (FUNC2(s, msgbuf, B->len + 1, 0) < 0) {
		return 0;
	}

	/* Calculate the session key while we're waiting. */

	skey = FUNC6(ts, &A);
	if (skey == NULL) {
		return 0;
	}

	/* Get the response from the client. */

	i = FUNC1(s, msgbuf, RESPONSE_LEN, MSG_WAITALL);
	if (i <= 0) {
		return 0;
	}
	if (FUNC9(ts, msgbuf) != 0) {
		return 0;
	}

	/* Client authenticated.  Now authenticate ourselves to the client. */

	if (FUNC2(s, FUNC8(ts), RESPONSE_LEN, 0) < 0) {
		return 0;
	}

	/* Copy the key and clean up. */

	if (tsrp) {
		FUNC0(tsrp->username, username, FUNC3(username) + 1);
		FUNC0(tsrp->key, skey, SESSION_KEY_LEN);
	}
	FUNC4(ts);

	return 1;
}