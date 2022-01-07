
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sa ;
typedef int new_name ;
struct TYPE_5__ {int handle; } ;
typedef TYPE_1__ ipc_pipe_server_t ;
struct TYPE_6__ {int nLength; int bInheritHandle; void* lpSecurityDescriptor; } ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef int DWORD ;


 int CreateNamedPipeA (char*,int const,int const,int,int ,int ,int ,TYPE_2__*) ;
 int FILE_FLAG_OVERLAPPED ;
 int INVALID_HANDLE_VALUE ;
 int IPC_PIPE_BUF_SIZE ;
 int PIPE_ACCESS_DUPLEX ;
 int PIPE_READMODE_MESSAGE ;
 int PIPE_TYPE_MESSAGE ;
 int PIPE_WAIT ;
 void* create_full_access_security_descriptor () ;
 int free (void*) ;
 int strcat_s (char*,int,char const*) ;
 int strcpy_s (char*,int,char*) ;

__attribute__((used)) static inline bool ipc_pipe_internal_create_pipe(ipc_pipe_server_t *pipe,
       const char *name)
{
 SECURITY_ATTRIBUTES sa;
 char new_name[512];
 void *sd;
 const DWORD access = PIPE_ACCESS_DUPLEX | FILE_FLAG_OVERLAPPED;
 const DWORD flags = PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE |
       PIPE_WAIT;

 strcpy_s(new_name, sizeof(new_name), "\\\\.\\pipe\\");
 strcat_s(new_name, sizeof(new_name), name);

 sd = create_full_access_security_descriptor();
 if (!sd) {
  return 0;
 }

 sa.nLength = sizeof(sa);
 sa.lpSecurityDescriptor = sd;
 sa.bInheritHandle = 0;

 pipe->handle = CreateNamedPipeA(new_name, access, flags, 1,
     IPC_PIPE_BUF_SIZE, IPC_PIPE_BUF_SIZE, 0,
     &sa);
 free(sd);

 return pipe->handle != INVALID_HANDLE_VALUE;
}
