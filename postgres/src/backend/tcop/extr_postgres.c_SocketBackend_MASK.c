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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  COMMERROR ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  DestNone ; 
 int EOF ; 
 int /*<<< orphan*/  ERRCODE_CONNECTION_DOES_NOT_EXIST ; 
 int /*<<< orphan*/  ERRCODE_CONNECTION_FAILURE ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int doing_extended_query_message ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int ignore_till_sync ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  whereToSendOutput ; 

__attribute__((used)) static int
FUNC13(StringInfo inBuf)
{
	int			qtype;

	/*
	 * Get message type code from the frontend.
	 */
	FUNC1();
	FUNC12();
	qtype = FUNC9();

	if (qtype == EOF)			/* frontend disconnected */
	{
		if (FUNC2())
			FUNC5(COMMERROR,
					(FUNC6(ERRCODE_CONNECTION_FAILURE),
					 FUNC7("unexpected EOF on client connection with an open transaction")));
		else
		{
			/*
			 * Can't send DEBUG log messages to client at this point. Since
			 * we're disconnecting right away, we don't need to restore
			 * whereToSendOutput.
			 */
			whereToSendOutput = DestNone;
			FUNC5(DEBUG1,
					(FUNC6(ERRCODE_CONNECTION_DOES_NOT_EXIST),
					 FUNC7("unexpected EOF on client connection")));
		}
		return qtype;
	}

	/*
	 * Validate message type code before trying to read body; if we have lost
	 * sync, better to say "command unknown" than to run out of memory because
	 * we used garbage as a length word.
	 *
	 * This also gives us a place to set the doing_extended_query_message flag
	 * as soon as possible.
	 */
	switch (qtype)
	{
		case 'Q':				/* simple query */
			doing_extended_query_message = false;
			if (FUNC3(FrontendProtocol) < 3)
			{
				/* old style without length word; convert */
				if (FUNC11(inBuf))
				{
					if (FUNC2())
						FUNC5(COMMERROR,
								(FUNC6(ERRCODE_CONNECTION_FAILURE),
								 FUNC7("unexpected EOF on client connection with an open transaction")));
					else
					{
						/*
						 * Can't send DEBUG log messages to client at this
						 * point. Since we're disconnecting right away, we
						 * don't need to restore whereToSendOutput.
						 */
						whereToSendOutput = DestNone;
						FUNC5(DEBUG1,
								(FUNC6(ERRCODE_CONNECTION_DOES_NOT_EXIST),
								 FUNC7("unexpected EOF on client connection")));
					}
					return EOF;
				}
			}
			break;

		case 'F':				/* fastpath function call */
			doing_extended_query_message = false;
			if (FUNC3(FrontendProtocol) < 3)
			{
				if (FUNC0(inBuf))
				{
					if (FUNC2())
						FUNC5(COMMERROR,
								(FUNC6(ERRCODE_CONNECTION_FAILURE),
								 FUNC7("unexpected EOF on client connection with an open transaction")));
					else
					{
						/*
						 * Can't send DEBUG log messages to client at this
						 * point. Since we're disconnecting right away, we
						 * don't need to restore whereToSendOutput.
						 */
						whereToSendOutput = DestNone;
						FUNC5(DEBUG1,
								(FUNC6(ERRCODE_CONNECTION_DOES_NOT_EXIST),
								 FUNC7("unexpected EOF on client connection")));
					}
					return EOF;
				}
			}
			break;

		case 'X':				/* terminate */
			doing_extended_query_message = false;
			ignore_till_sync = false;
			break;

		case 'B':				/* bind */
		case 'C':				/* close */
		case 'D':				/* describe */
		case 'E':				/* execute */
		case 'H':				/* flush */
		case 'P':				/* parse */
			doing_extended_query_message = true;
			/* these are only legal in protocol 3 */
			if (FUNC3(FrontendProtocol) < 3)
				FUNC5(FATAL,
						(FUNC6(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC7("invalid frontend message type %d", qtype)));
			break;

		case 'S':				/* sync */
			/* stop any active skip-till-Sync */
			ignore_till_sync = false;
			/* mark not-extended, so that a new error doesn't begin skip */
			doing_extended_query_message = false;
			/* only legal in protocol 3 */
			if (FUNC3(FrontendProtocol) < 3)
				FUNC5(FATAL,
						(FUNC6(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC7("invalid frontend message type %d", qtype)));
			break;

		case 'd':				/* copy data */
		case 'c':				/* copy done */
		case 'f':				/* copy fail */
			doing_extended_query_message = false;
			/* these are only legal in protocol 3 */
			if (FUNC3(FrontendProtocol) < 3)
				FUNC5(FATAL,
						(FUNC6(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC7("invalid frontend message type %d", qtype)));
			break;

		default:

			/*
			 * Otherwise we got garbage from the frontend.  We treat this as
			 * fatal because we have probably lost message boundary sync, and
			 * there's no good way to recover.
			 */
			FUNC5(FATAL,
					(FUNC6(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC7("invalid frontend message type %d", qtype)));
			break;
	}

	/*
	 * In protocol version 3, all frontend messages have a length word next
	 * after the type code; we can read the message contents independently of
	 * the type.
	 */
	if (FUNC3(FrontendProtocol) >= 3)
	{
		if (FUNC10(inBuf, 0))
			return EOF;			/* suitable message already logged */
	}
	else
		FUNC8();
	FUNC4();

	return qtype;
}