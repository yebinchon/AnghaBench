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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__* ListenSocket ; 
 int MAXLISTEN ; 
 scalar_t__ PGINVALID_SOCKET ; 
 size_t POSTMASTER_FD_OWN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ bonjour_sdref ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int* postmaster_alive_fds ; 
 int* syslogPipe ; 

void
FUNC7(bool am_syslogger)
{
	int			i;

#ifndef WIN32

	/*
	 * Close the write end of postmaster death watch pipe. It's important to
	 * do this as early as possible, so that if postmaster dies, others won't
	 * think that it's still running because we're holding the pipe open.
	 */
	if (FUNC3(postmaster_alive_fds[POSTMASTER_FD_OWN]) != 0)
		FUNC4(FATAL,
				(FUNC5(),
				 FUNC6("could not close postmaster death monitoring pipe in child process: %m")));
	postmaster_alive_fds[POSTMASTER_FD_OWN] = -1;
#endif

	/* Close the listen sockets */
	for (i = 0; i < MAXLISTEN; i++)
	{
		if (ListenSocket[i] != PGINVALID_SOCKET)
		{
			FUNC2(ListenSocket[i]);
			ListenSocket[i] = PGINVALID_SOCKET;
		}
	}

	/* If using syslogger, close the read side of the pipe */
	if (!am_syslogger)
	{
#ifndef WIN32
		if (syslogPipe[0] >= 0)
			FUNC3(syslogPipe[0]);
		syslogPipe[0] = -1;
#else
		if (syslogPipe[0])
			CloseHandle(syslogPipe[0]);
		syslogPipe[0] = 0;
#endif
	}

#ifdef USE_BONJOUR
	/* If using Bonjour, close the connection to the mDNS daemon */
	if (bonjour_sdref)
		close(DNSServiceRefSockFD(bonjour_sdref));
#endif
}