#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  (* WalSndSendDataCallback ) () ;
struct TYPE_2__ {scalar_t__ flush; scalar_t__ write; } ;

/* Variables and functions */
 int /*<<< orphan*/  DestRemote ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* MyWalSnd ; 
 scalar_t__ WalSndCaughtUp ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ sentPtr ; 
 int waiting_for_ping_response ; 

__attribute__((used)) static void
FUNC6(WalSndSendDataCallback send_data)
{
	XLogRecPtr	replicatedPtr;

	/* ... let's just be real sure we're caught up ... */
	send_data();

	/*
	 * To figure out whether all WAL has successfully been replicated, check
	 * flush location if valid, write otherwise. Tools like pg_receivewal will
	 * usually (unless in synchronous mode) return an invalid flush location.
	 */
	replicatedPtr = FUNC2(MyWalSnd->flush) ?
		MyWalSnd->write : MyWalSnd->flush;

	if (WalSndCaughtUp && sentPtr == replicatedPtr &&
		!FUNC4())
	{
		/* Inform the standby that XLOG streaming is done */
		FUNC0("COPY 0", DestRemote);
		FUNC3();

		FUNC5(0);
	}
	if (!waiting_for_ping_response)
	{
		FUNC1(true);
		waiting_for_ping_response = true;
	}
}