#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ProtocolState {unsigned int state; unsigned int port; int is_sent_sslhello; int /*<<< orphan*/  app_proto; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
typedef  void Banner1 ;
struct TYPE_2__ {char* hello; int hello_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_POP3 ; 
 int /*<<< orphan*/  PROTO_SSL3 ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 TYPE_1__ banner_ssl ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*,int /*<<< orphan*/ ,unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (struct ProtocolState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct InteractiveData*) ; 
 int /*<<< orphan*/  FUNC4 (struct InteractiveData*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(  const struct Banner1 *banner1,
           void *banner1_private,
           struct ProtocolState *pstate,
           const unsigned char *px, size_t length,
           struct BannerOutput *banout,
           struct InteractiveData *more)
{
    unsigned state = pstate->state;
    unsigned i;
    
    FUNC0(banner1_private);
    FUNC0(banner1);
    
    
    for (i=0; i<length; i++) {
        if (px[i] == '\r')
            continue;

       
        switch (state) {
            case 0: case 1: case 2:
                FUNC1(banout, PROTO_POP3, px[i]);
                if ("+OK"[state] != px[i]) {
                    state = 0xffffffff;
                    FUNC3(more);
                } else
                    state++;
                break;
            case 3:
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == '\n') {
                    FUNC4(more, "CAPA\r\n", 6, 0);
                    state++;
                }
                break;
            case 4:
            case 204:
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == '-')
                    state = 100;
                else if (px[i] == '+')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 5:
            case 205:
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == 'O')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 6:
            case 206:
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == 'K')
                    state += 2; /* oops, I had too many states here */
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 8:
                if (px[i] == '\r')
                    continue;
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == '\n')
                    state++;
                break;
            case 9:
                if (px[i] == '\r')
                    continue;
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == '.')
                    state++;
                else if (px[i] == '\n')
                    continue;
                else
                    state--;
                break;
            case 10:
                if (px[i] == '\r')
                    continue;
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == '\n') {
                    FUNC4(more, "STLS\r\n", 6, 0);
                    state = 204;
                } else {
                    state = 8;
                }
                break;
            
            case 208:
                if (px[i] == '\r')
                    continue;
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == '\n') {
                    /* change the state here to SSL */
                    unsigned port = pstate->port;
                    FUNC2(pstate, 0, sizeof(*pstate));
                    pstate->app_proto = PROTO_SSL3;
                    pstate->is_sent_sslhello = 1;
                    pstate->port = (unsigned short)port;
                    state = 0;
                    
                    FUNC4(more, banner_ssl.hello, banner_ssl.hello_length, 0);
                    
                    break;
                }
                break;

            case 100:
                if (px[i] == '\r')
                    continue;
                FUNC1(banout, PROTO_POP3, px[i]);
                if (px[i] == '\n') {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            default:
                i = (unsigned)length;
                break;
        }
    }
    pstate->state = state;
}