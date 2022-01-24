#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_5__ {char* data; int len; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMMERROR ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int PqCommReadingMsg ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

int
FUNC13(StringInfo s, int maxlen)
{
	int32		len;

	FUNC0(PqCommReadingMsg);

	FUNC12(s);

	/* Read message length word */
	if (FUNC11((char *) &len, 4) == EOF)
	{
		FUNC6(COMMERROR,
				(FUNC7(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC8("unexpected EOF within message length word")));
		return EOF;
	}

	len = FUNC9(len);

	if (len < 4 ||
		(maxlen > 0 && len > maxlen))
	{
		FUNC6(COMMERROR,
				(FUNC7(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC8("invalid message length")));
		return EOF;
	}

	len -= 4;					/* discount length itself */

	if (len > 0)
	{
		/*
		 * Allocate space for message.  If we run out of room (ridiculously
		 * large message), we will elog(ERROR), but we want to discard the
		 * message body so as not to lose communication sync.
		 */
		FUNC4();
		{
			FUNC5(s, len);
		}
		FUNC1();
		{
			if (FUNC10(len) == EOF)
				FUNC6(COMMERROR,
						(FUNC7(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC8("incomplete message from client")));

			/* we discarded the rest of the message so we're back in sync. */
			PqCommReadingMsg = false;
			FUNC3();
		}
		FUNC2();

		/* And grab the message */
		if (FUNC11(s->data, len) == EOF)
		{
			FUNC6(COMMERROR,
					(FUNC7(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC8("incomplete message from client")));
			return EOF;
		}
		s->len = len;
		/* Place a trailing null per StringInfo convention */
		s->data[len] = '\0';
	}

	/* finished reading the message. */
	PqCommReadingMsg = false;

	return 0;
}