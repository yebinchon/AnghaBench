
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct _SECURITY_ATTRIBUTES {int nLength; int bInheritHandle; scalar_t__ lpSecurityDescriptor; } ;
struct TYPE_10__ {int cb; int hStdError; int hStdOutput; int hStdInput; int hProcess; int dwFlags; } ;
struct TYPE_9__ {int hReadPipeIn; int hReadPipeOut; int hWritePipeIn; int hWritePipeOut; int isRunning; int pid; TYPE_2__ processInfo; TYPE_2__ info; void* data; } ;
typedef TYPE_1__ libbochs_t ;
typedef int commandline ;
typedef int STARTUPINFOA ;
typedef int PROCESS_INFORMATION ;
typedef int LPTSTR ;


 int CREATE_NEW_CONSOLE ;
 scalar_t__ CreatePipe (int*,int*,struct _SECURITY_ATTRIBUTES*,int ) ;
 scalar_t__ CreateProcess (int *,int ,int *,int *,int ,int ,int *,int *,TYPE_2__*,TYPE_2__*) ;
 int INFINITE ;
 size_t PIPE_READ ;
 size_t PIPE_WRITE ;
 int R_FREE (void*) ;
 int SIZE_BUF ;
 int STARTF_USESTDHANDLES ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TRUE ;
 int WaitForInputIdle (int ,int ) ;
 int bochs_close (TYPE_1__*) ;
 int bochs_reset_buffer (TYPE_1__*) ;
 scalar_t__ bochs_wait (TYPE_1__*) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int eprintf (char*) ;
 int execl (char const*,char const*,char*,char*,char const*,int *) ;
 int exit (int) ;
 int fork () ;
 int free (int ) ;
 void* lpTmpBuffer ;
 int lprintf (char*,...) ;
 void* malloc (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int perror (char*) ;
 scalar_t__ pipe (int*) ;
 int r_sys_conv_utf8_to_win (char*) ;
 int read (int,void*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

bool bochs_open(libbochs_t* b, const char * pathBochs, const char * pathConfig) {
 bool result = 0;

 b->data = malloc (SIZE_BUF);
 if (!b->data) {
  return 0;
 }
 lpTmpBuffer = malloc (SIZE_BUF);
 if (!lpTmpBuffer) {
  R_FREE (b->data);
  return 0;
 }
 int aStdinPipe[2];
 int aStdoutPipe[2];
 int nChild;

 if (pipe (aStdinPipe) < 0) {
  eprintf ("Error: allocating pipe for child input redirect");
  return 0;
 }
 if (pipe(aStdoutPipe) < 0) {
  close (aStdinPipe[0]);
  close (aStdinPipe[1]);
  eprintf ("Error: allocating pipe for child output redirect");
  return 0;
 }

 nChild = fork ();
 if (0 == nChild) {

  if (dup2 (aStdinPipe[0], STDIN_FILENO) == -1) {
   eprintf ("Error: redirecting stdin");
   return 0;
  }


  if (dup2 (aStdoutPipe[1], STDOUT_FILENO) == -1) {
   eprintf ("Error: redirecting stdout");
   return 0;
  }


  if (dup2 (aStdoutPipe[1], STDERR_FILENO) == -1) {
   eprintf ("Error: redirecting stderr");
   return 0;
  }

  close (aStdinPipe[0]);
  close (aStdinPipe[1]);
  close (aStdoutPipe[0]);
  close (aStdoutPipe[1]);
  (void) execl (pathBochs, pathBochs, "-q", "-f", pathConfig, ((void*)0));
  perror ("execl");
  exit (1);
 } else if (nChild > 0) {
  close (aStdinPipe[0]);
  close (aStdoutPipe[1]);

  if (read (aStdoutPipe[0], lpTmpBuffer, 1) != 1) {
   eprintf ("boch_open failed");
   bochs_close (b);
  } else {
   b->hReadPipeIn = aStdoutPipe[0];
   b->hWritePipeOut = aStdinPipe[1];
   b->isRunning = 1;
   bochs_reset_buffer (b);
   eprintf ("Waiting for bochs...\n");
   if (bochs_wait (b)) {
    eprintf ("Ready.\n");
    b->pid = nChild;
    result = 1;
   } else {
    bochs_close (b);
   }
  }
 } else {
  perror ("pipe");

  close (aStdinPipe[0]);
  close (aStdinPipe[1]);
  close (aStdoutPipe[0]);
  close (aStdoutPipe[1]);
 }

 return result;
}
