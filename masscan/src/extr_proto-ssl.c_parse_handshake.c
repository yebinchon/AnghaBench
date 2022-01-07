
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int state; unsigned int remaining; unsigned char type; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_7__ {TYPE_2__ all; } ;
struct SSLRECORD {TYPE_4__ handshake; TYPE_3__ x; } ;
struct TYPE_5__ {struct SSLRECORD ssl; } ;
struct ProtocolState {TYPE_1__ sub; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int is_heartbleed; } ;
typedef int heartbleed_request ;


 int DROPDOWN (unsigned int,size_t,unsigned int) ;
 int parse_server_cert (struct Banner1 const*,void*,struct ProtocolState*,unsigned char const*,unsigned int,struct BannerOutput*,struct InteractiveData*) ;
 int parse_server_hello (struct Banner1 const*,void*,struct ProtocolState*,unsigned char const*,unsigned int,struct BannerOutput*,struct InteractiveData*) ;
 int tcp_transmit (struct InteractiveData*,char const*,int,int ) ;

__attribute__((used)) static void
parse_handshake(
        const struct Banner1 *banner1,
        void *banner1_private,
        struct ProtocolState *pstate,
        const unsigned char *px, size_t length,
        struct BannerOutput *banout,
        struct InteractiveData *more)
{
    struct SSLRECORD *ssl = &pstate->sub.ssl;
    unsigned state = ssl->handshake.state;
    unsigned remaining = ssl->handshake.remaining;
    unsigned i;
    enum {
        START,
        LENGTH0, LENGTH1, LENGTH2,
        CONTENTS,
        UNKNOWN,
    };





    for (i=0; i<length; i++)
    switch (state) {



    case START:
        if (px[i] & 0x80) {
            state = UNKNOWN;
            break;
        }

        ssl->handshake.type = px[i];



        ssl->x.all.state = 0;
        DROPDOWN(i,length,state);





    case LENGTH0:
        remaining = px[i];
        DROPDOWN(i,length,state);
    case LENGTH1:
        remaining <<= 8;
        remaining |= px[i];
        DROPDOWN(i,length,state);
    case LENGTH2:
        remaining <<= 8;
        remaining |= px[i];





        if (ssl->handshake.type == 2 && banner1->is_heartbleed) {
            static const char heartbleed_request[] =
                "\x15\x03\x02\x00\x02\x01\x80"
                "\x18\x03\x02\x00\x03\x01" "\x40\x00";
            tcp_transmit(more, heartbleed_request, sizeof(heartbleed_request)-1, 0);
        }
        DROPDOWN(i,length,state);







    case CONTENTS:
        {
            unsigned len = (unsigned)length-i;
            if (len > remaining)
                len = remaining;

            switch (ssl->handshake.type) {
                case 0:
                case 1:
                case 3:
                case 4:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 20:
                case 22:
                default:

                    break;

                case 2:
                    parse_server_hello( banner1,
                                       banner1_private,
                                       pstate,
                                       px+i, len,
                                       banout,
                                       more);
                    break;
                case 11:
                    parse_server_cert( banner1,
                                      banner1_private,
                                      pstate,
                                      px+i, len,
                                      banout,
                                      more);
                    break;
            }

            remaining -= len;
            i += len-1;

            if (remaining == 0)
                state = START;
        }

        break;
    case UNKNOWN:
    default:
        i = (unsigned)length;
    }

    ssl->handshake.state = state;
    ssl->handshake.remaining = remaining;
}
