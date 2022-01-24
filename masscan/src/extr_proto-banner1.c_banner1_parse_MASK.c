#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_17__ ;
typedef  struct TYPE_24__   TYPE_16__ ;
typedef  struct TYPE_23__   TYPE_15__ ;
typedef  struct TYPE_22__   TYPE_14__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_26__ {unsigned char version; } ;
struct TYPE_27__ {TYPE_1__ vnc; } ;
struct ProtocolState {int app_proto; int port; int /*<<< orphan*/  state; TYPE_2__ sub; int /*<<< orphan*/  is_sent_sslhello; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int /*<<< orphan*/  http_fields; int /*<<< orphan*/  smack; } ;
struct TYPE_34__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_33__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_32__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_31__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_30__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_29__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_28__ {unsigned int id; int extra; } ;
struct TYPE_25__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_24__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_23__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_22__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_21__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_20__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_19__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  (* parse ) (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;

/* Variables and functions */
#define  PROTO_FTP 144 
#define  PROTO_HEUR 143 
#define  PROTO_HTTP 142 
#define  PROTO_IMAP4 141 
#define  PROTO_MEMCACHED 140 
#define  PROTO_NONE 139 
#define  PROTO_POP3 138 
#define  PROTO_RDP 137 
#define  PROTO_SCRIPTING 136 
#define  PROTO_SMB 135 
#define  PROTO_SMTP 134 
#define  PROTO_SSH1 133 
#define  PROTO_SSH2 132 
#define  PROTO_SSL3 131 
#define  PROTO_TELNET 130 
#define  PROTO_VERSIONING 129 
#define  PROTO_VNC_RFB 128 
 size_t SMACK_NOT_FOUND ; 
 TYPE_17__ banner_ftp ; 
 TYPE_16__ banner_http ; 
 TYPE_15__ banner_imap4 ; 
 TYPE_14__ banner_memcached ; 
 TYPE_13__ banner_pop3 ; 
 TYPE_12__ banner_rdp ; 
 TYPE_11__ banner_scripting ; 
 TYPE_10__ banner_smb1 ; 
 TYPE_9__ banner_smtp ; 
 TYPE_8__ banner_ssh ; 
 TYPE_7__ banner_ssl ; 
 TYPE_6__ banner_telnet ; 
 TYPE_5__ banner_versioning ; 
 TYPE_4__ banner_vnc ; 
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*,int const,unsigned char const*,size_t) ; 
 unsigned char* FUNC1 (struct BannerOutput*,int const) ; 
 unsigned int FUNC2 (struct BannerOutput*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* patterns ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC6 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC7 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC8 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC9 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC10 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC11 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC12 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC13 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC14 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC15 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC16 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC17 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC18 (struct Banner1 const*,int /*<<< orphan*/ ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ; 

unsigned
FUNC19(
        const struct Banner1 *banner1,
        struct ProtocolState *tcb_state,
        const unsigned char *px, size_t length,
        struct BannerOutput *banout,
        struct InteractiveData *more)
{
    size_t x;
    unsigned offset = 0;
    unsigned proto;


    switch (tcb_state->app_proto) {
    case PROTO_NONE:
    case PROTO_HEUR:
        x = FUNC4(
                        banner1->smack,
                        &tcb_state->state,
                        px, &offset, (unsigned)length);
        if (x != SMACK_NOT_FOUND)
            proto = patterns[x].id;
        else
            proto = 0xFFFFFFFF;
        if (proto != 0xFFFFFFFF
            && !(proto == PROTO_SSL3 && !tcb_state->is_sent_sslhello)) {
            unsigned i;

            /* re-read the stuff that we missed */
            for (i=0; patterns[i].id && patterns[i].id != tcb_state->app_proto; i++)
                ;

            /* Kludge: patterns look confusing, so add port info to the
             * pattern */
            switch (proto) {
            case PROTO_FTP:
                if (patterns[x].extra == 1) {
                    if (tcb_state->port == 25 || tcb_state->port == 587)
                        proto = PROTO_SMTP;
                }
                break;
            case PROTO_VNC_RFB:
                tcb_state->sub.vnc.version = (unsigned char)patterns[x].extra;
                break;
            }

            tcb_state->app_proto = (unsigned short)proto;

            /* reset the state back again */
            tcb_state->state = 0;

            /* If there is any data from a previous packet, re-parse that */
            {
                const unsigned char *s = FUNC1(banout, PROTO_HEUR);
                unsigned s_len = FUNC2(banout, PROTO_HEUR);

                if (s && s_len)
                FUNC19(
                                banner1,
                                tcb_state,
                                s, s_len,
                                banout,
                                more);
            }
            FUNC19(
                            banner1,
                            tcb_state,
                            px, length,
                            banout,
                            more);
        } else {
            FUNC0(banout, PROTO_HEUR, px, length);
        }
        break;
    case PROTO_FTP:
            banner_ftp.parse(   banner1,
                             banner1->http_fields,
                             tcb_state,
                             px, length,
                             banout,
                             more);
            break;
        case PROTO_SMTP:
            banner_smtp.parse(   banner1,
                              banner1->http_fields,
                              tcb_state,
                              px, length,
                              banout,
                              more);
            break;
            
        case PROTO_TELNET:
            banner_telnet.parse(   banner1,
                              banner1->http_fields,
                              tcb_state,
                              px, length,
                              banout,
                              more);
            break;
        case PROTO_RDP:
            banner_rdp.parse(   banner1,
                                banner1->http_fields,
                                tcb_state,
                                px, length,
                                banout,
                                more);
            break;
        case PROTO_POP3:
            banner_pop3.parse(   banner1,
                              banner1->http_fields,
                              tcb_state,
                              px, length,
                              banout,
                              more);
            break;
    case PROTO_IMAP4:
            banner_imap4.parse(banner1,
                              banner1->http_fields,
                              tcb_state,
                              px, length,
                              banout,
                              more);
            break;
            
    case PROTO_SSH1:
    case PROTO_SSH2:
        /* generic text-based parser
         * TODO: in future, need to split these into separate protocols,
         * especially when binary parsing is added to SSH */
        banner_ssh.parse(   banner1,
                            banner1->http_fields,
                            tcb_state,
                            px, length,
                            banout,
                            more);
        break;
    case PROTO_HTTP:
        banner_http.parse(
                        banner1,
                        banner1->http_fields,
                        tcb_state,
                        px, length,
                        banout,
                        more);
        break;
    case PROTO_SSL3:
        banner_ssl.parse(
                        banner1,
                        banner1->http_fields,
                        tcb_state,
                        px, length,
                        banout,
                        more);
        break;
    case PROTO_SMB:
        banner_smb1.parse(
                        banner1,
                        banner1->http_fields,
                        tcb_state,
                        px, length,
                        banout,
                        more);
        break;
    case PROTO_VNC_RFB:
        banner_vnc.parse(    banner1,
                             banner1->http_fields,
                             tcb_state,
                             px, length,
                             banout,
                             more);
        break;
    case PROTO_MEMCACHED:
        banner_memcached.parse(    banner1,
                             banner1->http_fields,
                             tcb_state,
                             px, length,
                             banout,
                             more);
        break;
    case PROTO_SCRIPTING:
        banner_scripting.parse(    banner1,
                                   banner1->http_fields,
                                   tcb_state,
                                   px, length,
                                   banout,
                                   more);
        break;
    case PROTO_VERSIONING:
        banner_versioning.parse(      banner1,
                                   banner1->http_fields,
                                   tcb_state,
                                   px, length,
                                   banout,
                                   more);
        break;

    default:
        FUNC3(stderr, "banner1: internal error\n");
        break;

    }

    return tcb_state->app_proto;
}