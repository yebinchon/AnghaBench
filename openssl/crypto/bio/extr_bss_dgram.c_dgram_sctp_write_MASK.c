#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sctp_sndrcvinfo {int /*<<< orphan*/  sinfo_timetolive; int /*<<< orphan*/  snd_context; int /*<<< orphan*/  sinfo_context; int /*<<< orphan*/  snd_ppid; int /*<<< orphan*/  sinfo_ppid; int /*<<< orphan*/  sinfo_flags; int /*<<< orphan*/  snd_flags; int /*<<< orphan*/  snd_sid; int /*<<< orphan*/  sinfo_stream; int /*<<< orphan*/  pr_value; int /*<<< orphan*/  pr_policy; } ;
struct sctp_sndinfo {int /*<<< orphan*/  sinfo_timetolive; int /*<<< orphan*/  snd_context; int /*<<< orphan*/  sinfo_context; int /*<<< orphan*/  snd_ppid; int /*<<< orphan*/  sinfo_ppid; int /*<<< orphan*/  sinfo_flags; int /*<<< orphan*/  snd_flags; int /*<<< orphan*/  snd_sid; int /*<<< orphan*/  sinfo_stream; int /*<<< orphan*/  pr_value; int /*<<< orphan*/  pr_policy; } ;
struct sctp_prinfo {int /*<<< orphan*/  sinfo_timetolive; int /*<<< orphan*/  snd_context; int /*<<< orphan*/  sinfo_context; int /*<<< orphan*/  snd_ppid; int /*<<< orphan*/  sinfo_ppid; int /*<<< orphan*/  sinfo_flags; int /*<<< orphan*/  snd_flags; int /*<<< orphan*/  snd_sid; int /*<<< orphan*/  sinfo_stream; int /*<<< orphan*/  pr_value; int /*<<< orphan*/  pr_policy; } ;
struct msghdr {int msg_iovlen; scalar_t__ msg_controllen; scalar_t__ msg_flags; scalar_t__ msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct cmsghdr {void* cmsg_len; int /*<<< orphan*/  cmsg_type; void* cmsg_level; } ;
struct bio_dgram_sctp_sndinfo {int /*<<< orphan*/  sinfo_timetolive; int /*<<< orphan*/  snd_context; int /*<<< orphan*/  sinfo_context; int /*<<< orphan*/  snd_ppid; int /*<<< orphan*/  sinfo_ppid; int /*<<< orphan*/  sinfo_flags; int /*<<< orphan*/  snd_flags; int /*<<< orphan*/  snd_sid; int /*<<< orphan*/  sinfo_stream; int /*<<< orphan*/  pr_value; int /*<<< orphan*/  pr_policy; } ;
struct bio_dgram_sctp_prinfo {int /*<<< orphan*/  pr_value; int /*<<< orphan*/  pr_policy; } ;
typedef  int /*<<< orphan*/  handshake_sinfo ;
typedef  scalar_t__ caddr_t ;
struct TYPE_7__ {int /*<<< orphan*/  _errno; scalar_t__ save_shutdown; struct bio_dgram_sctp_prinfo prinfo; struct sctp_sndrcvinfo sndinfo; } ;
typedef  TYPE_1__ bio_dgram_sctp_data ;
struct TYPE_8__ {int /*<<< orphan*/  num; scalar_t__ ptr; } ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct cmsghdr*) ; 
 void* FUNC5 (int) ; 
 size_t FUNC6 (int) ; 
 void* IPPROTO_SCTP ; 
 int /*<<< orphan*/  SCTP_PRINFO ; 
 int /*<<< orphan*/  SCTP_SACK_IMMEDIATELY ; 
 int /*<<< orphan*/  SCTP_SNDINFO ; 
 int /*<<< orphan*/  SCTP_SNDRCV ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_sndrcvinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(BIO *b, const char *in, int inl)
{
    int ret;
    bio_dgram_sctp_data *data = (bio_dgram_sctp_data *) b->ptr;
    struct bio_dgram_sctp_sndinfo *sinfo = &(data->sndinfo);
    struct bio_dgram_sctp_prinfo *pinfo = &(data->prinfo);
    struct bio_dgram_sctp_sndinfo handshake_sinfo;
    struct iovec iov[1];
    struct msghdr msg;
    struct cmsghdr *cmsg;
#  if defined(SCTP_SNDINFO) && defined(SCTP_PRINFO)
    char cmsgbuf[CMSG_SPACE(sizeof(struct sctp_sndinfo)) +
                 CMSG_SPACE(sizeof(struct sctp_prinfo))];
    struct sctp_sndinfo *sndinfo;
    struct sctp_prinfo *prinfo;
#  else
    char cmsgbuf[FUNC6(sizeof(struct sctp_sndrcvinfo))];
    struct sctp_sndrcvinfo *sndrcvinfo;
#  endif

    FUNC7();

    /*
     * If we're send anything else than application data, disable all user
     * parameters and flags.
     */
    if (in[0] != 23) {
        FUNC9(&handshake_sinfo, 0, sizeof(handshake_sinfo));
#  ifdef SCTP_SACK_IMMEDIATELY
        handshake_sinfo.snd_flags = SCTP_SACK_IMMEDIATELY;
#  endif
        sinfo = &handshake_sinfo;
    }

    /* We can only send a shutdown alert if the socket is dry */
    if (data->save_shutdown) {
        ret = FUNC1(b);
        if (ret < 0)
            return -1;
        if (ret == 0) {
            FUNC0(b);
            FUNC3(b);
            return -1;
        }
    }

    iov[0].iov_base = (char *)in;
    iov[0].iov_len = inl;
    msg.msg_name = NULL;
    msg.msg_namelen = 0;
    msg.msg_iov = iov;
    msg.msg_iovlen = 1;
    msg.msg_control = (caddr_t) cmsgbuf;
    msg.msg_controllen = 0;
    msg.msg_flags = 0;
#  if defined(SCTP_SNDINFO) && defined(SCTP_PRINFO)
    cmsg = (struct cmsghdr *)cmsgbuf;
    cmsg->cmsg_level = IPPROTO_SCTP;
    cmsg->cmsg_type = SCTP_SNDINFO;
    cmsg->cmsg_len = CMSG_LEN(sizeof(struct sctp_sndinfo));
    sndinfo = (struct sctp_sndinfo *)CMSG_DATA(cmsg);
    memset(sndinfo, 0, sizeof(*sndinfo));
    sndinfo->snd_sid = sinfo->snd_sid;
    sndinfo->snd_flags = sinfo->snd_flags;
    sndinfo->snd_ppid = sinfo->snd_ppid;
    sndinfo->snd_context = sinfo->snd_context;
    msg.msg_controllen += CMSG_SPACE(sizeof(struct sctp_sndinfo));

    cmsg =
        (struct cmsghdr *)&cmsgbuf[CMSG_SPACE(sizeof(struct sctp_sndinfo))];
    cmsg->cmsg_level = IPPROTO_SCTP;
    cmsg->cmsg_type = SCTP_PRINFO;
    cmsg->cmsg_len = CMSG_LEN(sizeof(struct sctp_prinfo));
    prinfo = (struct sctp_prinfo *)CMSG_DATA(cmsg);
    memset(prinfo, 0, sizeof(*prinfo));
    prinfo->pr_policy = pinfo->pr_policy;
    prinfo->pr_value = pinfo->pr_value;
    msg.msg_controllen += CMSG_SPACE(sizeof(struct sctp_prinfo));
#  else
    cmsg = (struct cmsghdr *)cmsgbuf;
    cmsg->cmsg_level = IPPROTO_SCTP;
    cmsg->cmsg_type = SCTP_SNDRCV;
    cmsg->cmsg_len = FUNC5(sizeof(struct sctp_sndrcvinfo));
    sndrcvinfo = (struct sctp_sndrcvinfo *)FUNC4(cmsg);
    FUNC9(sndrcvinfo, 0, sizeof(*sndrcvinfo));
    sndrcvinfo->sinfo_stream = sinfo->snd_sid;
    sndrcvinfo->sinfo_flags = sinfo->snd_flags;
#   ifdef __FreeBSD__
    sndrcvinfo->sinfo_flags |= pinfo->pr_policy;
#   endif
    sndrcvinfo->sinfo_ppid = sinfo->snd_ppid;
    sndrcvinfo->sinfo_context = sinfo->snd_context;
    sndrcvinfo->sinfo_timetolive = pinfo->pr_value;
    msg.msg_controllen += FUNC6(sizeof(struct sctp_sndrcvinfo));
#  endif

    ret = FUNC10(b->num, &msg, 0);

    FUNC0(b);
    if (ret <= 0) {
        if (FUNC2(ret)) {
            FUNC3(b);
            data->_errno = FUNC8();
        }
    }
    return ret;
}