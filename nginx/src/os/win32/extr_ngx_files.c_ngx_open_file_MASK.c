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
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_fd_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_FLAG_BACKUP_SEMANTICS ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 scalar_t__ NGX_FILE_OPEN ; 
 scalar_t__ NGX_OK ; 
 int NGX_UTF16_BUFLEN ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

ngx_fd_t
FUNC5(u_char *name, u_long mode, u_long create, u_long access)
{
    size_t      len;
    u_short    *u;
    ngx_fd_t    fd;
    ngx_err_t   err;
    u_short     utf16[NGX_UTF16_BUFLEN];

    len = NGX_UTF16_BUFLEN;
    u = FUNC3(utf16, name, &len);

    if (u == NULL) {
        return INVALID_HANDLE_VALUE;
    }

    fd = INVALID_HANDLE_VALUE;

    if (create == NGX_FILE_OPEN
        && FUNC4(name, u, len) != NGX_OK)
    {
        goto failed;
    }

    fd = FUNC0(u, mode,
                     FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE,
                     NULL, create, FILE_FLAG_BACKUP_SEMANTICS, NULL);

failed:

    if (u != utf16) {
        err = ngx_errno;
        FUNC1(u);
        FUNC2(err);
    }

    return fd;
}