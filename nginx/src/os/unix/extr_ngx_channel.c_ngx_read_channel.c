
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msghdr {int msg_iovlen; int msg_controllen; int msg_accrightslen; int msg_flags; void* msg_accrights; void* msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
struct cmsghdr {scalar_t__ cmsg_len; scalar_t__ cmsg_type; int cmsg_level; } ;
typedef int ssize_t ;
typedef scalar_t__ socklen_t ;
typedef int ngx_socket_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_3__ {scalar_t__ command; int fd; } ;
typedef TYPE_1__ ngx_channel_t ;
typedef int cmsg ;
typedef void* caddr_t ;


 int CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 int CMSG_SPACE (int) ;
 int MSG_CTRUNC ;
 int MSG_TRUNC ;
 int NGX_AGAIN ;
 scalar_t__ NGX_CMD_OPEN_CHANNEL ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 scalar_t__ SCM_RIGHTS ;
 int SOL_SOCKET ;
 scalar_t__ ngx_errno ;
 int ngx_log_debug0 (int ,int *,int ,char*) ;
 int ngx_log_error (int ,int *,scalar_t__,char*,...) ;
 int ngx_memcpy (int*,int ,int) ;
 int recvmsg (int ,struct msghdr*,int ) ;

ngx_int_t
ngx_read_channel(ngx_socket_t s, ngx_channel_t *ch, size_t size, ngx_log_t *log)
{
    ssize_t n;
    ngx_err_t err;
    struct iovec iov[1];
    struct msghdr msg;







    int fd;


    iov[0].iov_base = (char *) ch;
    iov[0].iov_len = size;

    msg.msg_name = ((void*)0);
    msg.msg_namelen = 0;
    msg.msg_iov = iov;
    msg.msg_iovlen = 1;





    msg.msg_accrights = (caddr_t) &fd;
    msg.msg_accrightslen = sizeof(int);


    n = recvmsg(s, &msg, 0);

    if (n == -1) {
        err = ngx_errno;
        if (err == NGX_EAGAIN) {
            return NGX_AGAIN;
        }

        ngx_log_error(NGX_LOG_ALERT, log, err, "recvmsg() failed");
        return NGX_ERROR;
    }

    if (n == 0) {
        ngx_log_debug0(NGX_LOG_DEBUG_CORE, log, 0, "recvmsg() returned zero");
        return NGX_ERROR;
    }

    if ((size_t) n < sizeof(ngx_channel_t)) {
        ngx_log_error(NGX_LOG_ALERT, log, 0,
                      "recvmsg() returned not enough data: %z", n);
        return NGX_ERROR;
    }
    if (ch->command == NGX_CMD_OPEN_CHANNEL) {
        if (msg.msg_accrightslen != sizeof(int)) {
            ngx_log_error(NGX_LOG_ALERT, log, 0,
                          "recvmsg() returned no ancillary data");
            return NGX_ERROR;
        }

        ch->fd = fd;
    }



    return n;
}
