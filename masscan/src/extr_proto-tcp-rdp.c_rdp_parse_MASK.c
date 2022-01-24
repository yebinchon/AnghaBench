#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct RDPSTUFF {int tpkt_length; TYPE_2__ cotp; } ;
struct TYPE_3__ {struct RDPSTUFF rdp; } ;
struct ProtocolState {int state; TYPE_1__ sub; } ;
typedef  void const InteractiveData ;
struct BannerOutput {int dummy; } ;
typedef  void Banner1 ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_HEUR ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct BannerOutput*,int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 size_t FUNC3 (struct BannerOutput*,struct RDPSTUFF*,unsigned char const*,size_t) ; 

__attribute__((used)) static void
FUNC4(  const struct Banner1 *banner1,
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
    FUNC0(banner1_private);
    FUNC0(banner1);
    FUNC0(more);
    
    for (offset=0; offset<length; offset++) {
        unsigned char c = px[offset];
        switch (state & 0xF) {
            case TPKT_START:
                if (c != 3) { /* TPKT version=3 */
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
                
                /* In case the TPKT length is more bytes than are in this packet */
                if (length2 >= length - offset)
                    length2 = length - offset;
                
                bytes_parsed = FUNC3(banout, rdp, px + offset, length2);
                
                /* Track how many bytes the sub-parsers parsed, remembering
                 * that when the for-loop increments, it'll increment the offset
                 * by 1. */
                FUNC1(bytes_parsed != 0);
                offset += bytes_parsed - 1;
                rdp->tpkt_length -= (unsigned short)bytes_parsed;
                
                /* If we have bytes left in the TPKT, then stay in this state,
                 * otherwise transition to the next TPKT */
                if (rdp->tpkt_length)
                    state = TPKT_CONTENT;
                else
                    state = TPKT_START;
            }
                break;
            case UNKNOWN_PROTOCOL:
                FUNC2(banout, PROTO_HEUR, px, length);
                offset = length;
                break;
            default:
                break;
        }
    }
    pstate->state = state;
}