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
typedef  int socklen_t ;
typedef  int ngx_socket_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TYPE ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  master_read_fd_set ; 
 int /*<<< orphan*/  master_write_fd_set ; 
 int max_fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ngx_socket_errno ; 

__attribute__((used)) static void
FUNC4(ngx_cycle_t *cycle)
{
    int           n;
    socklen_t     len;
    ngx_err_t     err;
    ngx_socket_t  s;

    for (s = 0; s <= max_fd; s++) {

        if (FUNC1(s, &master_read_fd_set) == 0) {
            continue;
        }

        len = sizeof(int);

        if (FUNC2(s, SOL_SOCKET, SO_TYPE, &n, &len) == -1) {
            err = ngx_socket_errno;

            FUNC3(NGX_LOG_ALERT, cycle->log, err,
                          "invalid descriptor #%d in read fd_set", s);

            FUNC0(s, &master_read_fd_set);
        }
    }

    for (s = 0; s <= max_fd; s++) {

        if (FUNC1(s, &master_write_fd_set) == 0) {
            continue;
        }

        len = sizeof(int);

        if (FUNC2(s, SOL_SOCKET, SO_TYPE, &n, &len) == -1) {
            err = ngx_socket_errno;

            FUNC3(NGX_LOG_ALERT, cycle->log, err,
                          "invalid descriptor #%d in write fd_set", s);

            FUNC0(s, &master_write_fd_set);
        }
    }

    max_fd = -1;
}