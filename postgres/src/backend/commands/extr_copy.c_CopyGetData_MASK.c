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
struct TYPE_7__ {int cursor; int len; } ;
struct TYPE_6__ {int copy_dest; int reached_eof; int (* data_source_cb ) (void*,int,int) ;TYPE_2__* fe_msgbuf; int /*<<< orphan*/  copy_file; } ;
typedef  TYPE_1__* CopyState ;

/* Variables and functions */
#define  COPY_CALLBACK 131 
#define  COPY_FILE 130 
#define  COPY_NEW_FE 129 
#define  COPY_OLD_FE 128 
 int EOF ; 
 int /*<<< orphan*/  ERRCODE_CONNECTION_FAILURE ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERRCODE_QUERY_CANCELED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void*,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (void*,int,int) ; 

__attribute__((used)) static int
FUNC15(CopyState cstate, void *databuf, int minread, int maxread)
{
	int			bytesread = 0;

	switch (cstate->copy_dest)
	{
		case COPY_FILE:
			bytesread = FUNC7(databuf, 1, maxread, cstate->copy_file);
			if (FUNC6(cstate->copy_file))
				FUNC2(ERROR,
						(FUNC4(),
						 FUNC5("could not read from COPY file: %m")));
			if (bytesread == 0)
				cstate->reached_eof = true;
			break;
		case COPY_OLD_FE:

			/*
			 * We cannot read more than minread bytes (which in practice is 1)
			 * because old protocol doesn't have any clear way of separating
			 * the COPY stream from following data.  This is slow, but not any
			 * slower than the code path was originally, and we don't care
			 * much anymore about the performance of old protocol.
			 */
			if (FUNC10((char *) databuf, minread))
			{
				/* Only a \. terminator is legal EOF in old protocol */
				FUNC2(ERROR,
						(FUNC3(ERRCODE_CONNECTION_FAILURE),
						 FUNC5("unexpected EOF on client connection with an open transaction")));
			}
			bytesread = minread;
			break;
		case COPY_NEW_FE:
			while (maxread > 0 && bytesread < minread && !cstate->reached_eof)
			{
				int			avail;

				while (cstate->fe_msgbuf->cursor >= cstate->fe_msgbuf->len)
				{
					/* Try to receive another message */
					int			mtype;

			readmessage:
					FUNC0();
					FUNC13();
					mtype = FUNC9();
					if (mtype == EOF)
						FUNC2(ERROR,
								(FUNC3(ERRCODE_CONNECTION_FAILURE),
								 FUNC5("unexpected EOF on client connection with an open transaction")));
					if (FUNC11(cstate->fe_msgbuf, 0))
						FUNC2(ERROR,
								(FUNC3(ERRCODE_CONNECTION_FAILURE),
								 FUNC5("unexpected EOF on client connection with an open transaction")));
					FUNC1();
					switch (mtype)
					{
						case 'd':	/* CopyData */
							break;
						case 'c':	/* CopyDone */
							/* COPY IN correctly terminated by frontend */
							cstate->reached_eof = true;
							return bytesread;
						case 'f':	/* CopyFail */
							FUNC2(ERROR,
									(FUNC3(ERRCODE_QUERY_CANCELED),
									 FUNC5("COPY from stdin failed: %s",
											FUNC12(cstate->fe_msgbuf))));
							break;
						case 'H':	/* Flush */
						case 'S':	/* Sync */

							/*
							 * Ignore Flush/Sync for the convenience of client
							 * libraries (such as libpq) that may send those
							 * without noticing that the command they just
							 * sent was COPY.
							 */
							goto readmessage;
						default:
							FUNC2(ERROR,
									(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
									 FUNC5("unexpected message type 0x%02X during COPY from stdin",
											mtype)));
							break;
					}
				}
				avail = cstate->fe_msgbuf->len - cstate->fe_msgbuf->cursor;
				if (avail > maxread)
					avail = maxread;
				FUNC8(cstate->fe_msgbuf, databuf, avail);
				databuf = (void *) ((char *) databuf + avail);
				maxread -= avail;
				bytesread += avail;
			}
			break;
		case COPY_CALLBACK:
			bytesread = cstate->data_source_cb(databuf, minread, maxread);
			break;
	}

	return bytesread;
}