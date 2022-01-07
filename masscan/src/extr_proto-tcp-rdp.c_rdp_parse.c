
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct RDPSTUFF {int tpkt_length; TYPE_2__ cotp; } ;
struct TYPE_3__ {struct RDPSTUFF rdp; } ;
struct ProtocolState {int state; TYPE_1__ sub; } ;
typedef void const InteractiveData ;
struct BannerOutput {int dummy; } ;
typedef void Banner1 ;


 int PROTO_HEUR ;
 int UNUSEDPARM (void const*) ;
 int assert (int) ;
 int banout_append (struct BannerOutput*,int ,unsigned char const*,size_t) ;
 size_t cotp_parse (struct BannerOutput*,struct RDPSTUFF*,unsigned char const*,size_t) ;

__attribute__((used)) static void
rdp_parse( const struct Banner1 *banner1,
             void *banner1_private,
             struct ProtocolState *pstate,
             const unsigned char *px, size_t length,
             struct BannerOutput *banout,
             struct InteractiveData *more)
{
    unsigned state = pstate->state & 0xFFFFFF;
    struct RDPSTUFF *rdp = &pstate->sub.rdp;
    size_t offset;
    enum {
        TPKT_START,
        TPKT_RESERVED,
        TPKT_LENGTH0, TPKT_LENGTH1,
        TPKT_CONTENT,
        UNKNOWN_PROTOCOL,
    };
    UNUSEDPARM(banner1_private);
    UNUSEDPARM(banner1);
    UNUSEDPARM(more);

    for (offset=0; offset<length; offset++) {
        unsigned char c = px[offset];
        switch (state & 0xF) {
            case TPKT_START:
                if (c != 3) {
                    state = UNKNOWN_PROTOCOL;
                    offset--;
                } else {
                    rdp->tpkt_length = 0;
                    rdp->cotp.state = 0;
                    state = TPKT_RESERVED;
                }
                break;
            case TPKT_RESERVED:
                state++;
                break;
            case TPKT_LENGTH0:
                rdp->tpkt_length = rdp->tpkt_length;
                state++;
                break;
            case TPKT_LENGTH1:
                rdp->tpkt_length = rdp->tpkt_length<<8 | c;
                if (rdp->tpkt_length < 4) {
                    state = UNKNOWN_PROTOCOL;
                } else if (rdp->tpkt_length == 4) {
                    state = 0;
                } else {
                    rdp->tpkt_length -= 4;
                    state++;
                }
                break;
            case TPKT_CONTENT:
            {
                size_t length2 = rdp->tpkt_length;
                size_t bytes_parsed;


                if (length2 >= length - offset)
                    length2 = length - offset;

                bytes_parsed = cotp_parse(banout, rdp, px + offset, length2);




                assert(bytes_parsed != 0);
                offset += bytes_parsed - 1;
                rdp->tpkt_length -= (unsigned short)bytes_parsed;



                if (rdp->tpkt_length)
                    state = TPKT_CONTENT;
                else
                    state = TPKT_START;
            }
                break;
            case UNKNOWN_PROTOCOL:
                banout_append(banout, PROTO_HEUR, px, length);
                offset = length;
                break;
            default:
                break;
        }
    }
    pstate->state = state;
}
