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

/* Variables and functions */
 int /*<<< orphan*/  COMMERROR ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  last_processing ; 
 int /*<<< orphan*/  last_reply_timestamp ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (unsigned char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reply_message ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int streamingDoneReceiving ; 
 int streamingDoneSending ; 
 int waiting_for_ping_response ; 

__attribute__((used)) static void
FUNC12(void)
{
	unsigned char firstchar;
	int			r;
	bool		received = false;

	last_processing = FUNC0();

	for (;;)
	{
		FUNC9();
		r = FUNC6(&firstchar);
		if (r < 0)
		{
			/* unexpected error or EOF */
			FUNC2(COMMERROR,
					(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC4("unexpected EOF on standby connection")));
			FUNC10(0);
		}
		if (r == 0)
		{
			/* no data available without blocking */
			FUNC5();
			break;
		}

		/* Read the message contents */
		FUNC11(&reply_message);
		if (FUNC7(&reply_message, 0))
		{
			FUNC2(COMMERROR,
					(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC4("unexpected EOF on standby connection")));
			FUNC10(0);
		}

		/*
		 * If we already received a CopyDone from the frontend, the frontend
		 * should not send us anything until we've closed our end of the COPY.
		 * XXX: In theory, the frontend could already send the next command
		 * before receiving the CopyDone, but libpq doesn't currently allow
		 * that.
		 */
		if (streamingDoneReceiving && firstchar != 'X')
			FUNC2(FATAL,
					(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC4("unexpected standby message type \"%c\", after receiving CopyDone",
							firstchar)));

		/* Handle the very limited subset of commands expected in this phase */
		switch (firstchar)
		{
				/*
				 * 'd' means a standby reply wrapped in a CopyData packet.
				 */
			case 'd':
				FUNC1();
				received = true;
				break;

				/*
				 * CopyDone means the standby requested to finish streaming.
				 * Reply with CopyDone, if we had not sent that already.
				 */
			case 'c':
				if (!streamingDoneSending)
				{
					FUNC8('c', NULL, 0);
					streamingDoneSending = true;
				}

				streamingDoneReceiving = true;
				received = true;
				break;

				/*
				 * 'X' means that the standby is closing down the socket.
				 */
			case 'X':
				FUNC10(0);

			default:
				FUNC2(FATAL,
						(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC4("invalid standby message type \"%c\"",
								firstchar)));
		}
	}

	/*
	 * Save the last reply timestamp if we've received at least one reply.
	 */
	if (received)
	{
		last_reply_timestamp = last_processing;
		waiting_for_ping_response = false;
	}
}