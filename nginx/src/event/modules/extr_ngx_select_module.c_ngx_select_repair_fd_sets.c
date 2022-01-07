
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int socklen_t ;
typedef int ngx_socket_t ;
typedef int ngx_err_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 int FD_CLR (int,int *) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int NGX_LOG_ALERT ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int master_read_fd_set ;
 int master_write_fd_set ;
 int max_fd ;
 int ngx_log_error (int ,int ,int ,char*,int) ;
 int ngx_socket_errno ;

__attribute__((used)) static void
ngx_select_repair_fd_sets(ngx_cycle_t *cycle)
{
    int n;
    socklen_t len;
    ngx_err_t err;
    ngx_socket_t s;

    for (s = 0; s <= max_fd; s++) {

        if (FD_ISSET(s, &master_read_fd_set) == 0) {
            continue;
        }

        len = sizeof(int);

        if (getsockopt(s, SOL_SOCKET, SO_TYPE, &n, &len) == -1) {
            err = ngx_socket_errno;

            ngx_log_error(NGX_LOG_ALERT, cycle->log, err,
                          "invalid descriptor #%d in read fd_set", s);

            FD_CLR(s, &master_read_fd_set);
        }
    }

    for (s = 0; s <= max_fd; s++) {

        if (FD_ISSET(s, &master_write_fd_set) == 0) {
            continue;
        }

        len = sizeof(int);

        if (getsockopt(s, SOL_SOCKET, SO_TYPE, &n, &len) == -1) {
            err = ngx_socket_errno;

            ngx_log_error(NGX_LOG_ALERT, cycle->log, err,
                          "invalid descriptor #%d in write fd_set", s);

            FD_CLR(s, &master_write_fd_set);
        }
    }

    max_fd = -1;
}
