
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gc_arena {int dummy; } ;
struct TYPE_3__ {int nLength; int * lpSecurityDescriptor; int bInheritHandle; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef scalar_t__ HANDLE ;


 int ASSERT (int ) ;
 int CREATE_ALWAYS ;
 scalar_t__ CreateFileW (int ,int ,int ,TYPE_1__*,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_END ;
 int FILE_SHARE_READ ;
 int GENERIC_WRITE ;
 int GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ INVALID_SET_FILE_POINTER ;
 int M_ERR ;
 int M_ERRNO ;
 int M_WARN ;
 int OPEN_ALWAYS ;
 int O_APPEND ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int STD_ERROR_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int S_IRUSR ;
 int S_IWUSR ;
 scalar_t__ SetFilePointer (scalar_t__,int ,int *,int ) ;
 int SetStdHandle (int ,scalar_t__) ;
 int TRUE ;
 int _O_TEXT ;
 int _dup2 (int,int) ;
 int * _fdopen (int,char*) ;
 int _open_osfhandle (intptr_t,int ) ;
 int close (int) ;
 int dup2 (int,int) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int,char*,...) ;
 int * msgfp ;
 int open (char const*,int,int) ;
 int orig_stderr ;
 int std_redir ;
 int wide_string (char const*,struct gc_arena*) ;

void
redirect_stdout_stderr(const char *file, bool append)
{
    msg(M_WARN, "WARNING: The --log option is not supported on this OS because it lacks the dup2 function");

}
