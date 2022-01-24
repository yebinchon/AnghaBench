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
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ngx_parent ; 
 int /*<<< orphan*/  ngx_pid ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC9(ngx_log_t *log)
{
    int  fd;

    switch (FUNC3()) {
    case -1:
        FUNC5(NGX_LOG_EMERG, log, ngx_errno, "fork() failed");
        return NGX_ERROR;

    case 0:
        break;

    default:
        FUNC2(0);
    }

    ngx_parent = ngx_pid;
    ngx_pid = FUNC4();

    if (FUNC7() == -1) {
        FUNC5(NGX_LOG_EMERG, log, ngx_errno, "setsid() failed");
        return NGX_ERROR;
    }

    FUNC8(0);

    fd = FUNC6("/dev/null", O_RDWR);
    if (fd == -1) {
        FUNC5(NGX_LOG_EMERG, log, ngx_errno,
                      "open(\"/dev/null\") failed");
        return NGX_ERROR;
    }

    if (FUNC1(fd, STDIN_FILENO) == -1) {
        FUNC5(NGX_LOG_EMERG, log, ngx_errno, "dup2(STDIN) failed");
        return NGX_ERROR;
    }

    if (FUNC1(fd, STDOUT_FILENO) == -1) {
        FUNC5(NGX_LOG_EMERG, log, ngx_errno, "dup2(STDOUT) failed");
        return NGX_ERROR;
    }

#if 0
    if (dup2(fd, STDERR_FILENO) == -1) {
        ngx_log_error(NGX_LOG_EMERG, log, ngx_errno, "dup2(STDERR) failed");
        return NGX_ERROR;
    }
#endif

    if (fd > STDERR_FILENO) {
        if (FUNC0(fd) == -1) {
            FUNC5(NGX_LOG_EMERG, log, ngx_errno, "close() failed");
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}