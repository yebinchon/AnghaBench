#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  proto; } ;
struct TYPE_6__ {char* data; int len; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG5 ; 
 int EOF ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PASSWORD ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static char *
FUNC12(Port *port)
{
	StringInfoData buf;

	FUNC10();
	if (FUNC0(port->proto) >= 3)
	{
		/* Expect 'p' message type */
		int			mtype;

		mtype = FUNC7();
		if (mtype != 'p')
		{
			/*
			 * If the client just disconnects without offering a password,
			 * don't make a log entry.  This is legal per protocol spec and in
			 * fact commonly done by psql, so complaining just clutters the
			 * log.
			 */
			if (mtype != EOF)
				FUNC2(ERROR,
						(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC4("expected password response, got message type %d",
								mtype)));
			return NULL;		/* EOF or bad message type */
		}
	}
	else
	{
		/* For pre-3.0 clients, avoid log entry if they just disconnect */
		if (FUNC9() == EOF)
			return NULL;		/* EOF */
	}

	FUNC5(&buf);
	if (FUNC8(&buf, 1000))	/* receive password */
	{
		/* EOF - pq_getmessage already logged a suitable message */
		FUNC6(buf.data);
		return NULL;
	}

	/*
	 * Apply sanity check: password packet length should agree with length of
	 * contained string.  Note it is safe to use strlen here because
	 * StringInfo is guaranteed to have an appended '\0'.
	 */
	if (FUNC11(buf.data) + 1 != buf.len)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC4("invalid password packet size")));

	/*
	 * Don't allow an empty password. Libpq treats an empty password the same
	 * as no password at all, and won't even try to authenticate. But other
	 * clients might, so allowing it would be confusing.
	 *
	 * Note that this only catches an empty password sent by the client in
	 * plaintext. There's also a check in CREATE/ALTER USER that prevents an
	 * empty string from being stored as a user's password in the first place.
	 * We rely on that for MD5 and SCRAM authentication, but we still need
	 * this check here, to prevent an empty password from being used with
	 * authentication methods that check the password against an external
	 * system, like PAM, LDAP and RADIUS.
	 */
	if (buf.len == 1)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PASSWORD),
				 FUNC4("empty password returned by client")));

	/* Do not echo password to logs, for security. */
	FUNC1(DEBUG5, "received password packet");

	/*
	 * Return the received string.  Note we do not attempt to do any
	 * character-set conversion on it; since we don't yet know the client's
	 * encoding, there wouldn't be much point.
	 */
	return buf.data;
}