#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gc_arena {int dummy; } ;
struct TYPE_3__ {int nLength; int /*<<< orphan*/ * lpSecurityDescriptor; int /*<<< orphan*/  bInheritHandle; } ;
typedef  TYPE_1__ SECURITY_ATTRIBUTES ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_END ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ INVALID_SET_FILE_POINTER ; 
 int M_ERR ; 
 int M_ERRNO ; 
 int M_WARN ; 
 int /*<<< orphan*/  OPEN_ALWAYS ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _O_TEXT ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 int FUNC7 (intptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct gc_arena*) ; 
 struct gc_arena FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/ * msgfp ; 
 int FUNC13 (char const*,int,int) ; 
 int /*<<< orphan*/  orig_stderr ; 
 int std_redir ; 
 int /*<<< orphan*/  FUNC14 (char const*,struct gc_arena*) ; 

void
FUNC15(const char *file, bool append)
{
#if defined(_WIN32)
    if (!std_redir)
    {
        struct gc_arena gc = gc_new();
        HANDLE log_handle;
        int log_fd;

        SECURITY_ATTRIBUTES saAttr;
        saAttr.nLength = sizeof(SECURITY_ATTRIBUTES);
        saAttr.bInheritHandle = TRUE;
        saAttr.lpSecurityDescriptor = NULL;

        log_handle = CreateFileW(wide_string(file, &gc),
                                 GENERIC_WRITE,
                                 FILE_SHARE_READ,
                                 &saAttr,
                                 append ? OPEN_ALWAYS : CREATE_ALWAYS,
                                 FILE_ATTRIBUTE_NORMAL,
                                 NULL);

        gc_free(&gc);

        if (log_handle == INVALID_HANDLE_VALUE)
        {
            msg(M_WARN|M_ERRNO, "Warning: cannot open --log file: %s", file);
            return;
        }

        /* append to logfile? */
        if (append)
        {
            if (SetFilePointer(log_handle, 0, NULL, FILE_END) == INVALID_SET_FILE_POINTER)
            {
                msg(M_ERR, "Error: cannot seek to end of --log file: %s", file);
            }
        }

        /* save original stderr for password prompts */
        orig_stderr = GetStdHandle(STD_ERROR_HANDLE);

#if 0 /* seems not be necessary with stdout/stderr redirection below*/
        /* set up for redirection */
        if (!SetStdHandle(STD_OUTPUT_HANDLE, log_handle)
            || !SetStdHandle(STD_ERROR_HANDLE, log_handle))
        {
            msg(M_ERR, "Error: cannot redirect stdout/stderr to --log file: %s", file);
        }
#endif

        /* direct stdout/stderr to point to log_handle */
        log_fd = _open_osfhandle((intptr_t)log_handle, _O_TEXT);
        if (log_fd == -1)
        {
            msg(M_ERR, "Error: --log redirect failed due to _open_osfhandle failure");
        }

        /* open log_handle as FILE stream */
        ASSERT(msgfp == NULL);
        msgfp = _fdopen(log_fd, "wt");
        if (msgfp == NULL)
        {
            msg(M_ERR, "Error: --log redirect failed due to _fdopen");
        }

        /* redirect C-library stdout/stderr to log file */
        if (_dup2(log_fd, 1) == -1 || _dup2(log_fd, 2) == -1)
        {
            msg(M_WARN, "Error: --log redirect of stdout/stderr failed");
        }

        std_redir = true;
    }
#elif defined(HAVE_DUP2)
    if (!std_redir)
    {
        int out = open(file,
                       O_CREAT | O_WRONLY | (append ? O_APPEND : O_TRUNC),
                       S_IRUSR | S_IWUSR);

        if (out < 0)
        {
            msg(M_WARN|M_ERRNO, "Warning: Error redirecting stdout/stderr to --log file: %s", file);
            return;
        }

        if (dup2(out, 1) == -1)
        {
            msg(M_ERR, "--log file redirection error on stdout");
        }
        if (dup2(out, 2) == -1)
        {
            msg(M_ERR, "--log file redirection error on stderr");
        }

        if (out > 2)
        {
            close(out);
        }

        std_redir = true;
    }

#else  /* if defined(_WIN32) */
    FUNC12(M_WARN, "WARNING: The --log option is not supported on this OS because it lacks the dup2 function");
#endif /* if defined(_WIN32) */
}