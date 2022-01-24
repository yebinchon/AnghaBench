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
 int /*<<< orphan*/  PROTO_IMAP4 ; 
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
            case 0:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '*')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 1:
                if (px[i] == ' ') {
                    FUNC1(banout, PROTO_IMAP4, px[i]);
                    continue;
                } else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                /* fall through */
            case 2:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == 'O')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 3:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == 'K')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 4:
                if (px[i] == ' ') {
                    FUNC1(banout, PROTO_IMAP4, px[i]);
                    state++;
                    break;
                } else if (px[i] != '\n') {
                    FUNC1(banout, PROTO_IMAP4, px[i]);
                    /* no transition */
                    break;
                } else {
                    state++;
                    /* fall through */
                }
            case 5:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '\n') {
                    FUNC4(more, "a001 CAPABILITY\r\n", 17, 0);
                    state = 100;
                }
                break;
            case 100:
            case 300:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '*')
                    state += 100;
                else if (px[i] == 'a')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 101:
            case 301:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '0')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 102:
            case 302:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '0')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 103:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '1')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 303:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '2')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 104:
            case 304:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == ' ')
                    state++;
                else {
                    state = 0xffffffff;
                    FUNC3(more);
                }
                break;
            case 105:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '\n') {
                    FUNC4(more, "a002 STARTTLS\r\n", 15, 0);
                    state = 300;
                }
                break;
                
            case 200:
            case 400:
                FUNC1(banout, PROTO_IMAP4, px[i]);
                if (px[i] == '\n')
                    state -= 100;
                break;
                
            case 305:
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
                
            case 0xffffffff:
            default:
                i = (unsigned)length;
                break;
        }
    }
    pstate->state = state;
}