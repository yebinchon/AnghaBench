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
typedef  int /*<<< orphan*/  int64 ;
typedef  void* XLogRecPtr ;
typedef  void* TimestampTz ;
typedef  int Size ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  incoming_message ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(unsigned char type, char *buf, Size len)
{
	int			hdrlen;
	XLogRecPtr	dataStart;
	XLogRecPtr	walEnd;
	TimestampTz sendTime;
	bool		replyRequested;

	FUNC9(&incoming_message);

	switch (type)
	{
		case 'w':				/* WAL records */
			{
				/* copy message to StringInfo */
				hdrlen = sizeof(int64) + sizeof(int64) + sizeof(int64);
				if (len < hdrlen)
					FUNC4(ERROR,
							(FUNC5(ERRCODE_PROTOCOL_VIOLATION),
							 FUNC6("invalid WAL message received from primary")));
				FUNC3(&incoming_message, buf, hdrlen);

				/* read the fields */
				dataStart = FUNC8(&incoming_message);
				walEnd = FUNC8(&incoming_message);
				sendTime = FUNC8(&incoming_message);
				FUNC0(walEnd, sendTime);

				buf += hdrlen;
				len -= hdrlen;
				FUNC2(buf, len, dataStart);
				break;
			}
		case 'k':				/* Keepalive */
			{
				/* copy message to StringInfo */
				hdrlen = sizeof(int64) + sizeof(int64) + sizeof(char);
				if (len != hdrlen)
					FUNC4(ERROR,
							(FUNC5(ERRCODE_PROTOCOL_VIOLATION),
							 FUNC6("invalid keepalive message received from primary")));
				FUNC3(&incoming_message, buf, hdrlen);

				/* read the fields */
				walEnd = FUNC8(&incoming_message);
				sendTime = FUNC8(&incoming_message);
				replyRequested = FUNC7(&incoming_message);

				FUNC0(walEnd, sendTime);

				/* If the primary requested a reply, send one immediately */
				if (replyRequested)
					FUNC1(true, false);
				break;
			}
		default:
			FUNC4(ERROR,
					(FUNC5(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC6("invalid replication message type %d",
									 type)));
	}
}