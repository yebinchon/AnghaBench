
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SMTPSTUFF {int code; int is_last; } ;
struct TYPE_3__ {struct SMTPSTUFF smtp; } ;
struct ProtocolState {unsigned int state; unsigned int port; int is_sent_sslhello; int app_proto; TYPE_1__ sub; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
typedef void Banner1 ;
struct TYPE_4__ {char* hello; int hello_length; } ;


 int PROTO_SMTP ;
 int PROTO_SSL3 ;
 int UNUSEDPARM (void const*) ;
 TYPE_2__ banner_ssl ;
 int banout_append_char (struct BannerOutput*,int ,unsigned char const) ;
 int isdigit (unsigned char const) ;
 int isprint (unsigned char const) ;
 int memset (struct ProtocolState*,int ,int) ;
 int tcp_close (struct InteractiveData*) ;
 int tcp_transmit (struct InteractiveData*,char*,int,int ) ;

__attribute__((used)) static void
smtp_parse( const struct Banner1 *banner1,
          void *banner1_private,
          struct ProtocolState *pstate,
          const unsigned char *px, size_t length,
          struct BannerOutput *banout,
          struct InteractiveData *more)
{
    unsigned state = pstate->state;
    unsigned i;
    struct SMTPSTUFF *smtp = &pstate->sub.smtp;

    UNUSEDPARM(banner1_private);
    UNUSEDPARM(banner1);


    for (i=0; i<length; i++) {

        switch (state) {
            case 0:
            case 100:
            case 200:
                smtp->code = 0;
                state++;

            case 1:
            case 2:
            case 3:
            case 101:
            case 102:
            case 103:
            case 201:
            case 202:
            case 203:
                if (!isdigit(px[i]&0xFF)) {
                    state = 0xffffffff;
                    tcp_close(more);
                } else {
                    smtp->code *= 10;
                    smtp->code += (px[i] - '0');
                    state++;
                    banout_append_char(banout, PROTO_SMTP, px[i]);
                }
                break;
            case 4:
            case 104:
            case 204:
                if (px[i] == ' ') {
                    smtp->is_last = 1;
                    state++;
                    banout_append_char(banout, PROTO_SMTP, px[i]);
                } else if (px[i] == '-') {
                    smtp->is_last = 0;
                    state++;
                    banout_append_char(banout, PROTO_SMTP, px[i]);
                } else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 5:
                if (px[i] == '\r')
                    continue;
                else if (px[i] == '\n') {
                    if (smtp->is_last) {
                        tcp_transmit(more, "EHLO masscan\r\n", 14, 0);
                        state = 100;
                        banout_append_char(banout, PROTO_SMTP, px[i]);
                    } else {
                        banout_append_char(banout, PROTO_SMTP, px[i]);
                        state = 0;
                    }
                } else if (px[i] == '\0' || !isprint(px[i])) {
                    state = 0xffffffff;
                    tcp_close(more);
                    continue;
                } else {
                    banout_append_char(banout, PROTO_SMTP, px[i]);
                }
                break;
            case 105:
                if (px[i] == '\r')
                    continue;
                else if (px[i] == '\n') {
                    if (smtp->is_last) {
                        tcp_transmit(more, "STARTTLS\r\n", 10, 0);
                        state = 200;
                        banout_append_char(banout, PROTO_SMTP, px[i]);
                    } else {
                        banout_append_char(banout, PROTO_SMTP, px[i]);
                        state = 100;
                    }
                } else if (px[i] == '\0' || !isprint(px[i])) {
                    state = 0xffffffff;
                    tcp_close(more);
                    continue;
                } else {
                    banout_append_char(banout, PROTO_SMTP, px[i]);
                }
                break;
            case 205:
                if (px[i] == '\r')
                    continue;
                else if (px[i] == '\n') {

                    if (smtp->code == 220) {


                        unsigned port = pstate->port;
                        memset(pstate, 0, sizeof(*pstate));
                        pstate->app_proto = PROTO_SSL3;
                        pstate->is_sent_sslhello = 1;
                        pstate->port = (unsigned short)port;
                        state = 0;

                        tcp_transmit(more, banner_ssl.hello, banner_ssl.hello_length, 0);

                    } else {
                        state = 0xffffffff;
                        tcp_close(more);
                    }
                } else if (px[i] == '\0' || !isprint(px[i])) {
                    state = 0xffffffff;
                    tcp_close(more);
                    continue;
                } else {
                    banout_append_char(banout, PROTO_SMTP, px[i]);
                }
                break;
            default:
                i = (unsigned)length;
                break;
        }
    }
    pstate->state = state;
}
