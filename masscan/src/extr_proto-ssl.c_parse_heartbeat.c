
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int state; unsigned int remaining; unsigned char type; } ;
struct SSLRECORD {TYPE_2__ handshake; } ;
struct TYPE_3__ {struct SSLRECORD ssl; } ;
struct ProtocolState {int base64; TYPE_1__ sub; } ;
typedef void InteractiveData ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int is_capture_heartbleed; } ;


 int DROPDOWN (unsigned int,size_t,unsigned int) ;
 int PROTO_HEARTBLEED ;
 int PROTO_VULN ;
 int UNUSEDPARM (void*) ;
 int banout_append (struct BannerOutput*,int ,char*,int) ;
 int banout_append_base64 (struct BannerOutput*,int ,unsigned char const*,unsigned int,int *) ;
 int banout_init_base64 (int *) ;

__attribute__((used)) static void
parse_heartbeat(
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
        LENGTH0, LENGTH1,
        CONTENTS,
        UNKNOWN,
    };

    UNUSEDPARM(more);
    UNUSEDPARM(banner1_private);





    for (i=0; i<length; i++)
    switch (state) {





    case START:
        if (px[i] < 1 || 2 < px[i]) {
            state = UNKNOWN;
            break;
        }
        ssl->handshake.type = px[i];
        DROPDOWN(i,length,state);


    case LENGTH0:
        remaining = px[i];
        DROPDOWN(i,length,state);
    case LENGTH1:
        remaining <<= 8;
        remaining |= px[i];


        if (ssl->handshake.type == 2) {



            if (remaining >= 16)
                banout_append( banout, PROTO_VULN, "SSL[HEARTBLEED] ", 16);



            if (banner1->is_capture_heartbleed) {
                banout_init_base64(&pstate->base64);
                banout_append(banout, PROTO_HEARTBLEED, "", 0);
            }
        }
        DROPDOWN(i,length,state);




    case CONTENTS:
        {
            unsigned len = (unsigned)length-i;
            if (len > remaining)
                len = remaining;





            if (ssl->handshake.type == 2 && banner1->is_capture_heartbleed) {
                banout_append_base64(banout,
                                     PROTO_HEARTBLEED,
                                     px+i, len,
                                     &pstate->base64);
            }

            remaining -= len;
            i += len-1;

            if (remaining == 0)
                state = UNKNOWN;
        }

        break;




    case UNKNOWN:
    default:
        i = (unsigned)length;
    }


    ssl->handshake.state = state;
    ssl->handshake.remaining = remaining;
}
