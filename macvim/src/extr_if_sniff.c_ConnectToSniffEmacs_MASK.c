#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sa ;
struct TYPE_5__ {scalar_t__ in_use; } ;
struct TYPE_4__ {int nLength; int /*<<< orphan*/  bInheritHandle; int /*<<< orphan*/ * lpSecurityDescriptor; } ;
typedef  TYPE_1__ SECURITY_ATTRIBUTES ;
typedef  void* HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SniffEmacs ; 
 int /*<<< orphan*/  SniffEmacsReadThread ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int fd_from_sniff ; 
 int fd_to_sniff ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ gui ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/ * hBufferMutex ; 
 void* handle_from_sniff ; 
 void* handle_to_sniff ; 
 int /*<<< orphan*/  msg_sniff_disconnect ; 
 scalar_t__ FUNC14 (int*) ; 
 void* readthread_handle ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int sniff_connected ; 
 scalar_t__ sniffemacs_handle ; 
 scalar_t__ sniffemacs_pid ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC16()
{
#ifdef WIN32		/* Windows Version of the Code */
    HANDLE ToSniffEmacs[2], FromSniffEmacs[2];
    SECURITY_ATTRIBUTES sa;

    sa.nLength = sizeof(sa);
    sa.lpSecurityDescriptor = NULL;
    sa.bInheritHandle = TRUE;

    if (! CreatePipe(&ToSniffEmacs[0], &ToSniffEmacs[1], &sa, 0))
	return 1;
    if (! CreatePipe(&FromSniffEmacs[0], &FromSniffEmacs[1], &sa, 0))
	return 1;

    sniffemacs_handle = ExecuteDetachedProgram(SniffEmacs[0], SniffEmacs[0],
	ToSniffEmacs[0], FromSniffEmacs[1]);

    if (sniffemacs_handle)
    {
	handle_to_sniff  = ToSniffEmacs[1];
	handle_from_sniff = FromSniffEmacs[0];
	sniff_connected = 1;
	hBufferMutex = CreateMutex(
	    NULL,			/* no security attributes */
	    FALSE,			/* initially not owned */
	    "SniffReadBufferMutex");    /* name of mutex */
	if (hBufferMutex == NULL)
	{
	    /* Check for error. */
	}
	readthread_handle = (HANDLE)_beginthread(SniffEmacsReadThread, 0, NULL);
	return 0;
    }
    else
    {
	/* error in spawn() */
	return 1;
    }

#else		/* UNIX Version of the Code */
    int ToSniffEmacs[2], FromSniffEmacs[2];

    if (FUNC14(ToSniffEmacs) != 0)
	return 1;
    if (FUNC14(FromSniffEmacs) != 0)
	return 1;

    /* fork */
    if ((sniffemacs_pid=FUNC11()) == 0)
    {
	/* child */

	/* prepare communication pipes */
	FUNC5(ToSniffEmacs[1]);
	FUNC5(FromSniffEmacs[0]);

	FUNC6(ToSniffEmacs[0],FUNC10(stdin));   /* write to ToSniffEmacs[1] */
	FUNC6(FromSniffEmacs[1],FUNC10(stdout));/* read from FromSniffEmacs[0] */

	FUNC5(ToSniffEmacs[0]);
	FUNC5(FromSniffEmacs[1]);

	/* start sniffemacs */
	FUNC7 (SniffEmacs[0], SniffEmacs);
	{
/*	    FILE *out = fdopen(FromSniffEmacs[1], "w"); */
	    FUNC15(1);
	    FUNC12(FUNC3(msg_sniff_disconnect), stdout);
	    FUNC9(stdout);
	    FUNC15(3);
#ifdef FEAT_GUI
	    if (gui.in_use)
		gui_exit(1);
#endif
	    FUNC8(1);
	}
	return 1;
    }
    else if (sniffemacs_pid > 0)
    {
	/* parent process */
	FUNC5(ToSniffEmacs[0]);
	fd_to_sniff  = ToSniffEmacs[1];
	FUNC5(FromSniffEmacs[1]);
	fd_from_sniff = FromSniffEmacs[0];
	sniff_connected = 1;
	return 0;
    }
    else   /* error in fork() */
	return 1;
#endif		/* UNIX Version of the Code */
}