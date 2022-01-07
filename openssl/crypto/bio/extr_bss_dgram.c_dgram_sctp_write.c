
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sctp_sndrcvinfo {int sinfo_timetolive; int snd_context; int sinfo_context; int snd_ppid; int sinfo_ppid; int sinfo_flags; int snd_flags; int snd_sid; int sinfo_stream; int pr_value; int pr_policy; } ;
struct sctp_sndinfo {int sinfo_timetolive; int snd_context; int sinfo_context; int snd_ppid; int sinfo_ppid; int sinfo_flags; int snd_flags; int snd_sid; int sinfo_stream; int pr_value; int pr_policy; } ;
struct sctp_prinfo {int sinfo_timetolive; int snd_context; int sinfo_context; int snd_ppid; int sinfo_ppid; int sinfo_flags; int snd_flags; int snd_sid; int sinfo_stream; int pr_value; int pr_policy; } ;
struct msghdr {int msg_iovlen; scalar_t__ msg_controllen; scalar_t__ msg_flags; scalar_t__ msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct cmsghdr {void* cmsg_len; int cmsg_type; void* cmsg_level; } ;
struct bio_dgram_sctp_sndinfo {int sinfo_timetolive; int snd_context; int sinfo_context; int snd_ppid; int sinfo_ppid; int sinfo_flags; int snd_flags; int snd_sid; int sinfo_stream; int pr_value; int pr_policy; } ;
struct bio_dgram_sctp_prinfo {int pr_value; int pr_policy; } ;
typedef int handshake_sinfo ;
typedef scalar_t__ caddr_t ;
struct TYPE_7__ {int _errno; scalar_t__ save_shutdown; struct bio_dgram_sctp_prinfo prinfo; struct sctp_sndrcvinfo sndinfo; } ;
typedef TYPE_1__ bio_dgram_sctp_data ;
struct TYPE_8__ {int num; scalar_t__ ptr; } ;
typedef TYPE_2__ BIO ;


 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_dgram_sctp_wait_for_dry (TYPE_2__*) ;
 scalar_t__ BIO_dgram_should_retry (int) ;
 int BIO_set_retry_write (TYPE_2__*) ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 void* CMSG_LEN (int) ;
 size_t CMSG_SPACE (int) ;
 void* IPPROTO_SCTP ;
 int SCTP_PRINFO ;
 int SCTP_SACK_IMMEDIATELY ;
 int SCTP_SNDINFO ;
 int SCTP_SNDRCV ;
 int clear_socket_error () ;
 int get_last_socket_error () ;
 int memset (struct sctp_sndrcvinfo*,int ,int) ;
 int sendmsg (int ,struct msghdr*,int ) ;

__attribute__((used)) static int dgram_sctp_write(BIO *b, const char *in, int inl)
{
    int ret;
    bio_dgram_sctp_data *data = (bio_dgram_sctp_data *) b->ptr;
    struct bio_dgram_sctp_sndinfo *sinfo = &(data->sndinfo);
    struct bio_dgram_sctp_prinfo *pinfo = &(data->prinfo);
    struct bio_dgram_sctp_sndinfo handshake_sinfo;
    struct iovec iov[1];
    struct msghdr msg;
    struct cmsghdr *cmsg;






    char cmsgbuf[CMSG_SPACE(sizeof(struct sctp_sndrcvinfo))];
    struct sctp_sndrcvinfo *sndrcvinfo;


    clear_socket_error();





    if (in[0] != 23) {
        memset(&handshake_sinfo, 0, sizeof(handshake_sinfo));



        sinfo = &handshake_sinfo;
    }


    if (data->save_shutdown) {
        ret = BIO_dgram_sctp_wait_for_dry(b);
        if (ret < 0)
            return -1;
        if (ret == 0) {
            BIO_clear_retry_flags(b);
            BIO_set_retry_write(b);
            return -1;
        }
    }

    iov[0].iov_base = (char *)in;
    iov[0].iov_len = inl;
    msg.msg_name = ((void*)0);
    msg.msg_namelen = 0;
    msg.msg_iov = iov;
    msg.msg_iovlen = 1;
    msg.msg_control = (caddr_t) cmsgbuf;
    msg.msg_controllen = 0;
    msg.msg_flags = 0;
    cmsg = (struct cmsghdr *)cmsgbuf;
    cmsg->cmsg_level = IPPROTO_SCTP;
    cmsg->cmsg_type = SCTP_SNDRCV;
    cmsg->cmsg_len = CMSG_LEN(sizeof(struct sctp_sndrcvinfo));
    sndrcvinfo = (struct sctp_sndrcvinfo *)CMSG_DATA(cmsg);
    memset(sndrcvinfo, 0, sizeof(*sndrcvinfo));
    sndrcvinfo->sinfo_stream = sinfo->snd_sid;
    sndrcvinfo->sinfo_flags = sinfo->snd_flags;



    sndrcvinfo->sinfo_ppid = sinfo->snd_ppid;
    sndrcvinfo->sinfo_context = sinfo->snd_context;
    sndrcvinfo->sinfo_timetolive = pinfo->pr_value;
    msg.msg_controllen += CMSG_SPACE(sizeof(struct sctp_sndrcvinfo));


    ret = sendmsg(b->num, &msg, 0);

    BIO_clear_retry_flags(b);
    if (ret <= 0) {
        if (BIO_dgram_should_retry(ret)) {
            BIO_set_retry_write(b);
            data->_errno = get_last_socket_error();
        }
    }
    return ret;
}
