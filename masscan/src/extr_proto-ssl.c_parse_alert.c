
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int state; unsigned int remaining; } ;
struct TYPE_6__ {unsigned char level; unsigned char description; } ;
struct TYPE_7__ {TYPE_2__ server_alert; } ;
struct SSLRECORD {TYPE_4__ handshake; TYPE_3__ x; } ;
struct TYPE_5__ {struct SSLRECORD ssl; } ;
struct ProtocolState {TYPE_1__ sub; } ;
typedef void InteractiveData ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int is_poodle_sslv3; } ;
typedef int foo ;


 int AUTO_LEN ;
 int DROPDOWN (unsigned int,size_t,unsigned int) ;
 int PROTO_SAFE ;
 int PROTO_SSL3 ;
 int UNUSEDPARM (void*) ;
 int banout_append (struct BannerOutput*,int ,char*,int ) ;
 int banout_is_contains (struct BannerOutput*,int ,char*) ;
 int sprintf_s (char*,int,char*,int,unsigned char) ;

__attribute__((used)) static void
parse_alert(
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
        DESCRIPTION,
        UNKNOWN,
    };

    UNUSEDPARM(more);
    UNUSEDPARM(banner1_private);





    for (i=0; i<length; i++)
        switch (state) {
            case START:
                ssl->x.server_alert.level = px[i];
                DROPDOWN(i,length,state);

            case DESCRIPTION:
                ssl->x.server_alert.description = px[i];
                if (banner1->is_poodle_sslv3 && ssl->x.server_alert.level == 2) {
                    char foo[64];


                    switch (ssl->x.server_alert.description) {
                        case 86:
                            if (!banout_is_contains(banout, PROTO_SAFE, "TLS_FALLBACK_SCSV"))
                                banout_append(banout, PROTO_SAFE,
                                      "poodle[TLS_FALLBACK_SCSV] ", AUTO_LEN);
                            break;
                        case 40:
                            if (!banout_is_contains(banout, PROTO_SAFE, "TLS_FALLBACK_SCSV"))
                                banout_append(banout, PROTO_SAFE,
                                          "poodle[no-SSLv3] ", AUTO_LEN);
                            break;
                        default:
                            banout_append(banout, PROTO_SAFE,
                                          "poodle[no-SSLv3] ", AUTO_LEN);
                            sprintf_s(foo, sizeof(foo), " ALERT(0x%02x%02x) ",
                                      ssl->x.server_alert.level,
                                      ssl->x.server_alert.description
                                      );

                            banout_append(banout, PROTO_SSL3, foo, AUTO_LEN);
                            break;
                    }
                } else {
                    char foo[64];
                    sprintf_s(foo, sizeof(foo), " ALERT(0x%02x%02x) ",
                              ssl->x.server_alert.level,
                              ssl->x.server_alert.description
                              );

                    banout_append(banout, PROTO_SSL3, foo, AUTO_LEN);
                }
                DROPDOWN(i,length,state);

            case UNKNOWN:
            default:
                i = (unsigned)length;
        }


    ssl->handshake.state = state;
    ssl->handshake.remaining = remaining;
}
