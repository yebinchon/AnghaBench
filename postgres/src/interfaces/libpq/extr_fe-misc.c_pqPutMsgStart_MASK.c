#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int outCount; char* outBuffer; int outMsgStart; int outMsgEnd; scalar_t__ Pfdebug; int /*<<< orphan*/  pversion; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char) ; 
 scalar_t__ FUNC2 (int,TYPE_1__*) ; 

int
FUNC3(char msg_type, bool force_len, PGconn *conn)
{
	int			lenPos;
	int			endPos;

	/* allow room for message type byte */
	if (msg_type)
		endPos = conn->outCount + 1;
	else
		endPos = conn->outCount;

	/* do we want a length word? */
	if (force_len || FUNC0(conn->pversion) >= 3)
	{
		lenPos = endPos;
		/* allow room for message length */
		endPos += 4;
	}
	else
		lenPos = -1;

	/* make sure there is room for message header */
	if (FUNC2(endPos, conn))
		return EOF;
	/* okay, save the message type byte if any */
	if (msg_type)
		conn->outBuffer[conn->outCount] = msg_type;
	/* set up the message pointers */
	conn->outMsgStart = lenPos;
	conn->outMsgEnd = endPos;
	/* length word, if needed, will be filled in by pqPutMsgEnd */

	if (conn->Pfdebug)
		FUNC1(conn->Pfdebug, "To backend> Msg %c\n",
				msg_type ? msg_type : ' ');

	return 0;
}