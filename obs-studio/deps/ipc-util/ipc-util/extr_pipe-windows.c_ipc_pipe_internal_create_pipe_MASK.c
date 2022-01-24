#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  new_name ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ ipc_pipe_server_t ;
struct TYPE_6__ {int nLength; int bInheritHandle; void* lpSecurityDescriptor; } ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int const,int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FILE_FLAG_OVERLAPPED ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  IPC_PIPE_BUF_SIZE ; 
 int PIPE_ACCESS_DUPLEX ; 
 int PIPE_READMODE_MESSAGE ; 
 int PIPE_TYPE_MESSAGE ; 
 int PIPE_WAIT ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 

__attribute__((used)) static inline bool FUNC5(ipc_pipe_server_t *pipe,
						 const char *name)
{
	SECURITY_ATTRIBUTES sa;
	char new_name[512];
	void *sd;
	const DWORD access = PIPE_ACCESS_DUPLEX | FILE_FLAG_OVERLAPPED;
	const DWORD flags = PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE |
			    PIPE_WAIT;

	FUNC4(new_name, sizeof(new_name), "\\\\.\\pipe\\");
	FUNC3(new_name, sizeof(new_name), name);

	sd = FUNC1();
	if (!sd) {
		return false;
	}

	sa.nLength = sizeof(sa);
	sa.lpSecurityDescriptor = sd;
	sa.bInheritHandle = false;

	pipe->handle = FUNC0(new_name, access, flags, 1,
					IPC_PIPE_BUF_SIZE, IPC_PIPE_BUF_SIZE, 0,
					&sa);
	FUNC2(sd);

	return pipe->handle != INVALID_HANDLE_VALUE;
}