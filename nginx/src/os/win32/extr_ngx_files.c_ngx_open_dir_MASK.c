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
typedef  char u_char ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_6__ {int valid_info; int ready; int /*<<< orphan*/  dir; int /*<<< orphan*/  finddata; } ;
typedef  TYPE_2__ ngx_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC5(ngx_str_t *name, ngx_dir_t *dir)
{
    u_char     *pattern, *p;
    ngx_err_t   err;

    pattern = FUNC1(name->len + 3);
    if (pattern == NULL) {
        return NGX_ERROR;
    }

    p = FUNC2(pattern, name->data, name->len);

    *p++ = '/';
    *p++ = '*';
    *p = '\0';

    dir->dir = FUNC0((const char *) pattern, &dir->finddata);

    if (dir->dir == INVALID_HANDLE_VALUE) {
        err = ngx_errno;
        FUNC3(pattern);
        FUNC4(err);
        return NGX_ERROR;
    }

    FUNC3(pattern);

    dir->valid_info = 1;
    dir->ready = 1;

    return NGX_OK;
}