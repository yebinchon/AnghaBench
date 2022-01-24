#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {scalar_t__ fd; scalar_t__ size; int /*<<< orphan*/ * log; } ;
typedef  TYPE_1__ ngx_rtmp_mpegts_file_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  scalar_t__ ngx_int_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_FILE_DEFAULT_ACCESS ; 
 int /*<<< orphan*/  NGX_FILE_TRUNCATE ; 
 int /*<<< orphan*/  NGX_FILE_WRONLY ; 
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

ngx_int_t
FUNC4(ngx_rtmp_mpegts_file_t *file, u_char *path,
    ngx_log_t *log)
{
    file->log = log;

    file->fd = FUNC2(path, NGX_FILE_WRONLY, NGX_FILE_TRUNCATE,
                             NGX_FILE_DEFAULT_ACCESS);

    if (file->fd == NGX_INVALID_FILE) {
        FUNC1(NGX_LOG_ERR, log, ngx_errno,
                      "hls: error creating fragment file");
        return NGX_ERROR;
    }

    file->size = 0;

    if (FUNC3(file) != NGX_OK) {
        FUNC1(NGX_LOG_ERR, log, ngx_errno,
                      "hls: error writing fragment header");
        FUNC0(file->fd);
        return NGX_ERROR;
    }

    return NGX_OK;
}