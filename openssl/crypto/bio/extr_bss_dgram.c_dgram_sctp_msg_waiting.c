
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sn_type; } ;
union sctp_notification {TYPE_1__ sn_header; } ;
struct msghdr {int msg_flags; int msg_iovlen; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef int snp ;
struct TYPE_8__ {int notification_context; int (* handle_notifications ) (TYPE_3__*,int ,void*) ;} ;
typedef TYPE_2__ bio_dgram_sctp_data ;
struct TYPE_9__ {int num; scalar_t__ ptr; } ;
typedef TYPE_3__ BIO ;


 int F_GETFL ;
 int F_SETFL ;
 int MSG_NOTIFICATION ;
 int MSG_PEEK ;
 int O_NONBLOCK ;
 scalar_t__ SCTP_AUTHENTICATION_EVENT ;
 int dgram_sctp_handle_auth_free_key_event (TYPE_3__*,union sctp_notification*) ;
 int fcntl (int ,int ,int) ;
 int memset (union sctp_notification*,int ,int) ;
 int recvmsg (int ,struct msghdr*,int ) ;
 int stub1 (TYPE_3__*,int ,void*) ;

__attribute__((used)) static int dgram_sctp_msg_waiting(BIO *b)
{
    int n, sockflags;
    union sctp_notification snp;
    struct msghdr msg;
    struct iovec iov;
    bio_dgram_sctp_data *data = (bio_dgram_sctp_data *) b->ptr;


    do {
        memset(&snp, 0, sizeof(snp));
        iov.iov_base = (char *)&snp;
        iov.iov_len = sizeof(union sctp_notification);
        msg.msg_name = ((void*)0);
        msg.msg_namelen = 0;
        msg.msg_iov = &iov;
        msg.msg_iovlen = 1;
        msg.msg_control = ((void*)0);
        msg.msg_controllen = 0;
        msg.msg_flags = 0;

        sockflags = fcntl(b->num, F_GETFL, 0);
        fcntl(b->num, F_SETFL, O_NONBLOCK);
        n = recvmsg(b->num, &msg, MSG_PEEK);
        fcntl(b->num, F_SETFL, sockflags);


        if (n > 0 && (msg.msg_flags & MSG_NOTIFICATION)) {





            memset(&snp, 0, sizeof(snp));
            iov.iov_base = (char *)&snp;
            iov.iov_len = sizeof(union sctp_notification);
            msg.msg_name = ((void*)0);
            msg.msg_namelen = 0;
            msg.msg_iov = &iov;
            msg.msg_iovlen = 1;
            msg.msg_control = ((void*)0);
            msg.msg_controllen = 0;
            msg.msg_flags = 0;
            n = recvmsg(b->num, &msg, 0);

            if (data->handle_notifications != ((void*)0))
                data->handle_notifications(b, data->notification_context,
                                           (void *)&snp);
        }

    } while (n > 0 && (msg.msg_flags & MSG_NOTIFICATION));


    if (n > 0)
        return 1;
    else
        return 0;
}
