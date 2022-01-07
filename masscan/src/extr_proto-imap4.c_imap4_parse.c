
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ProtocolState {unsigned int state; unsigned int port; int is_sent_sslhello; int app_proto; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
typedef void Banner1 ;
struct TYPE_2__ {char* hello; int hello_length; } ;


 int PROTO_IMAP4 ;
 int PROTO_SSL3 ;
 int UNUSEDPARM (void const*) ;
 TYPE_1__ banner_ssl ;
 int banout_append_char (struct BannerOutput*,int ,unsigned char const) ;
 int memset (struct ProtocolState*,int ,int) ;
 int tcp_close (struct InteractiveData*) ;
 int tcp_transmit (struct InteractiveData*,char*,int,int ) ;

__attribute__((used)) static void
imap4_parse( const struct Banner1 *banner1,
           void *banner1_private,
           struct ProtocolState *pstate,
           const unsigned char *px, size_t length,
           struct BannerOutput *banout,
           struct InteractiveData *more)
{
    unsigned state = pstate->state;
    unsigned i;

    UNUSEDPARM(banner1_private);
    UNUSEDPARM(banner1);


    for (i=0; i<length; i++) {
        if (px[i] == '\r')
            continue;

        switch (state) {
            case 0:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '*')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 1:
                if (px[i] == ' ') {
                    banout_append_char(banout, PROTO_IMAP4, px[i]);
                    continue;
                } else {
                    state = 0xffffffff;
                    tcp_close(more);
                }

            case 2:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == 'O')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 3:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == 'K')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 4:
                if (px[i] == ' ') {
                    banout_append_char(banout, PROTO_IMAP4, px[i]);
                    state++;
                    break;
                } else if (px[i] != '\n') {
                    banout_append_char(banout, PROTO_IMAP4, px[i]);

                    break;
                } else {
                    state++;

                }
            case 5:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '\n') {
                    tcp_transmit(more, "a001 CAPABILITY\r\n", 17, 0);
                    state = 100;
                }
                break;
            case 100:
            case 300:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '*')
                    state += 100;
                else if (px[i] == 'a')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 101:
            case 301:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '0')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 102:
            case 302:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '0')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 103:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '1')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 303:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '2')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 104:
            case 304:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == ' ')
                    state++;
                else {
                    state = 0xffffffff;
                    tcp_close(more);
                }
                break;
            case 105:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '\n') {
                    tcp_transmit(more, "a002 STARTTLS\r\n", 15, 0);
                    state = 300;
                }
                break;

            case 200:
            case 400:
                banout_append_char(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '\n')
                    state -= 100;
                break;

            case 305:
                if (px[i] == '\n') {

                    unsigned port = pstate->port;
                    memset(pstate, 0, sizeof(*pstate));
                    pstate->app_proto = PROTO_SSL3;
                    pstate->is_sent_sslhello = 1;
                    pstate->port = (unsigned short)port;
                    state = 0;

                    tcp_transmit(more, banner_ssl.hello, banner_ssl.hello_length, 0);
                    break;
                }
                break;

            case 0xffffffff:
            default:
                i = (unsigned)length;
                break;
        }
    }
    pstate->state = state;
}
