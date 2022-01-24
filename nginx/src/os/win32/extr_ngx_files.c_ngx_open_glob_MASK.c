#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_7__ {scalar_t__ cFileName; } ;
struct TYPE_5__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {scalar_t__ dir; char* pattern; int no_match; int last; int ready; TYPE_4__ finddata; TYPE_1__ name; int /*<<< orphan*/  log; scalar_t__ test; } ;
typedef  TYPE_2__ ngx_glob_t ;
typedef  scalar_t__ ngx_err_t ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 scalar_t__ FUNC0 (char const*,TYPE_4__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ ngx_errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 size_t FUNC4 (scalar_t__) ; 

ngx_int_t
FUNC5(ngx_glob_t *gl)
{
    u_char     *p;
    size_t      len;
    ngx_err_t   err;

    gl->dir = FUNC0((const char *) gl->pattern, &gl->finddata);

    if (gl->dir == INVALID_HANDLE_VALUE) {

        err = ngx_errno;

        if ((err == ERROR_FILE_NOT_FOUND || err == ERROR_PATH_NOT_FOUND)
             && gl->test)
        {
            gl->no_match = 1;
            return NGX_OK;
        }

        return NGX_ERROR;
    }

    for (p = gl->pattern; *p; p++) {
        if (*p == '/') {
            gl->last = p + 1 - gl->pattern;
        }
    }

    len = FUNC4(gl->finddata.cFileName);
    gl->name.len = gl->last + len;

    gl->name.data = FUNC1(gl->name.len + 1, gl->log);
    if (gl->name.data == NULL) {
        return NGX_ERROR;
    }

    FUNC3(gl->name.data, gl->pattern, gl->last);
    FUNC2(gl->name.data + gl->last, (u_char *) gl->finddata.cFileName,
                len + 1);

    gl->ready = 1;

    return NGX_OK;
}