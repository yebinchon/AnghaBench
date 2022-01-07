
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_17__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_26__ {unsigned char version; } ;
struct TYPE_27__ {TYPE_1__ vnc; } ;
struct ProtocolState {int app_proto; int port; int state; TYPE_2__ sub; int is_sent_sslhello; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int http_fields; int smack; } ;
struct TYPE_34__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_33__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_32__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_31__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_30__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_29__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_28__ {unsigned int id; int extra; } ;
struct TYPE_25__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_24__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_23__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_22__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_21__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_20__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_19__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
struct TYPE_18__ {int (* parse ) (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;} ;
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
 int banout_append (struct BannerOutput*,int const,unsigned char const*,size_t) ;
 unsigned char* banout_string (struct BannerOutput*,int const) ;
 unsigned int banout_string_length (struct BannerOutput*,int const) ;
 int fprintf (int ,char*) ;
 TYPE_3__* patterns ;
 size_t smack_search_next (int ,int *,unsigned char const*,unsigned int*,unsigned int) ;
 int stderr ;
 int stub1 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub10 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub11 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub12 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub13 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub14 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub2 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub3 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub4 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub5 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub6 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub7 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub8 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;
 int stub9 (struct Banner1 const*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;

unsigned
banner1_parse(
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
    case 139:
    case 143:
        x = smack_search_next(
                        banner1->smack,
                        &tcb_state->state,
                        px, &offset, (unsigned)length);
        if (x != SMACK_NOT_FOUND)
            proto = patterns[x].id;
        else
            proto = 0xFFFFFFFF;
        if (proto != 0xFFFFFFFF
            && !(proto == 131 && !tcb_state->is_sent_sslhello)) {
            unsigned i;


            for (i=0; patterns[i].id && patterns[i].id != tcb_state->app_proto; i++)
                ;



            switch (proto) {
            case 144:
                if (patterns[x].extra == 1) {
                    if (tcb_state->port == 25 || tcb_state->port == 587)
                        proto = 134;
                }
                break;
            case 128:
                tcb_state->sub.vnc.version = (unsigned char)patterns[x].extra;
                break;
            }

            tcb_state->app_proto = (unsigned short)proto;


            tcb_state->state = 0;


            {
                const unsigned char *s = banout_string(banout, 143);
                unsigned s_len = banout_string_length(banout, 143);

                if (s && s_len)
                banner1_parse(
                                banner1,
                                tcb_state,
                                s, s_len,
                                banout,
                                more);
            }
            banner1_parse(
                            banner1,
                            tcb_state,
                            px, length,
                            banout,
                            more);
        } else {
            banout_append(banout, 143, px, length);
        }
        break;
    case 144:
            banner_ftp.parse( banner1,
                             banner1->http_fields,
                             tcb_state,
                             px, length,
                             banout,
                             more);
            break;
        case 134:
            banner_smtp.parse( banner1,
                              banner1->http_fields,
                              tcb_state,
                              px, length,
                              banout,
                              more);
            break;

        case 130:
            banner_telnet.parse( banner1,
                              banner1->http_fields,
                              tcb_state,
                              px, length,
                              banout,
                              more);
            break;
        case 137:
            banner_rdp.parse( banner1,
                                banner1->http_fields,
                                tcb_state,
                                px, length,
                                banout,
                                more);
            break;
        case 138:
            banner_pop3.parse( banner1,
                              banner1->http_fields,
                              tcb_state,
                              px, length,
                              banout,
                              more);
            break;
    case 141:
            banner_imap4.parse(banner1,
                              banner1->http_fields,
                              tcb_state,
                              px, length,
                              banout,
                              more);
            break;

    case 133:
    case 132:



        banner_ssh.parse( banner1,
                            banner1->http_fields,
                            tcb_state,
                            px, length,
                            banout,
                            more);
        break;
    case 142:
        banner_http.parse(
                        banner1,
                        banner1->http_fields,
                        tcb_state,
                        px, length,
                        banout,
                        more);
        break;
    case 131:
        banner_ssl.parse(
                        banner1,
                        banner1->http_fields,
                        tcb_state,
                        px, length,
                        banout,
                        more);
        break;
    case 135:
        banner_smb1.parse(
                        banner1,
                        banner1->http_fields,
                        tcb_state,
                        px, length,
                        banout,
                        more);
        break;
    case 128:
        banner_vnc.parse( banner1,
                             banner1->http_fields,
                             tcb_state,
                             px, length,
                             banout,
                             more);
        break;
    case 140:
        banner_memcached.parse( banner1,
                             banner1->http_fields,
                             tcb_state,
                             px, length,
                             banout,
                             more);
        break;
    case 136:
        banner_scripting.parse( banner1,
                                   banner1->http_fields,
                                   tcb_state,
                                   px, length,
                                   banout,
                                   more);
        break;
    case 129:
        banner_versioning.parse( banner1,
                                   banner1->http_fields,
                                   tcb_state,
                                   px, length,
                                   banout,
                                   more);
        break;

    default:
        fprintf(stderr, "banner1: internal error\n");
        break;

    }

    return tcb_state->app_proto;
}
