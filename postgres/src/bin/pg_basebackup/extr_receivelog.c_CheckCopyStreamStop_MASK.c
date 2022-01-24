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
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_4__ {int /*<<< orphan*/  timeline; scalar_t__ (* stream_stop ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
typedef  TYPE_1__ StreamCtl ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int still_sending ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC6(PGconn *conn, StreamCtl *stream, XLogRecPtr blockpos,
					XLogRecPtr *stoppos)
{
	if (still_sending && stream->stream_stop(blockpos, stream->timeline, false))
	{
		if (!FUNC3(stream, blockpos))
		{
			/* Potential error message is written by close_walfile */
			return false;
		}
		if (FUNC2(conn, NULL) <= 0 || FUNC1(conn))
		{
			FUNC4("could not send copy-end packet: %s",
						 FUNC0(conn));
			return false;
		}
		still_sending = false;
	}

	return true;
}