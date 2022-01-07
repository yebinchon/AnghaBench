
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int si ;
typedef int pi ;
struct TYPE_3__ {int nLength; int * lpSecurityDescriptor; int bInheritHandle; } ;
typedef char STARTUPINFO ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef char PROCESS_INFORMATION ;
typedef void* HANDLE ;
typedef int FILE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (void*) ;
 int CreatePipe (void**,void**,TYPE_1__*,int ) ;
 scalar_t__ CreateProcess (int *,char*,int *,int *,int ,int ,int *,int *,char*,char*) ;
 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,void*,int ,void**,int ,int ,int ) ;
 int FALSE ;
 int GetCurrentProcess () ;
 int INVALID_HANDLE_VALUE ;
 int ReadFile (void*,char*,int,scalar_t__*,int *) ;
 int STARTF_USESTDHANDLES ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (void*,int) ;
 int ZeroMemory (char*,int) ;
 scalar_t__ errno ;
 scalar_t__ feof (int *) ;
 int fflush (int ) ;
 int * fgets (char*,int,int *) ;
 int fprintf (int ,char*,char*) ;
 int pclose (int *) ;
 scalar_t__ pclose_check (int *) ;
 int perror (char*) ;
 int * popen (char*,char*) ;
 int stderr ;
 int stdout ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static char *
pipe_read_line(char *cmd, char *line, int maxsize)
{

 FILE *pgver;


 fflush(stdout);
 fflush(stderr);

 errno = 0;
 if ((pgver = popen(cmd, "r")) == ((void*)0))
 {
  perror("popen failure");
  return ((void*)0);
 }

 errno = 0;
 if (fgets(line, maxsize, pgver) == ((void*)0))
 {
  if (feof(pgver))
   fprintf(stderr, "no data was returned by command \"%s\"\n", cmd);
  else
   perror("fgets failure");
  pclose(pgver);
  return ((void*)0);
 }

 if (pclose_check(pgver))
  return ((void*)0);

 return line;
}
