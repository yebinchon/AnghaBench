#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int state; unsigned int remaining; } ;
struct TYPE_6__ {unsigned char level; unsigned char description; } ;
struct TYPE_7__ {TYPE_2__ server_alert; } ;
struct SSLRECORD {TYPE_4__ handshake; TYPE_3__ x; } ;
struct TYPE_5__ {struct SSLRECORD ssl; } ;
struct ProtocolState {TYPE_1__ sub; } ;
typedef  void InteractiveData ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int /*<<< orphan*/  is_poodle_sslv3; } ;
typedef  int /*<<< orphan*/  foo ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,size_t,unsigned int) ; 
 int /*<<< orphan*/  PROTO_SAFE ; 
 int /*<<< orphan*/  PROTO_SSL3 ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct BannerOutput*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct BannerOutput*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,unsigned char) ; 

__attribute__((used)) static void
FUNC5(
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
    
    FUNC1(more);
    FUNC1(banner1_private);
    
    /*
     * `for all bytes in the segment`
     *   `do a state transition for that byte `
     */
    for (i=0; i<length; i++)
        switch (state) {
            case START:
                ssl->x.server_alert.level = px[i];
                FUNC0(i,length,state);
                
            case DESCRIPTION:
                ssl->x.server_alert.description = px[i];
                if (banner1->is_poodle_sslv3 && ssl->x.server_alert.level == 2) {
                    char foo[64];

                    /* fatal error */
                    switch (ssl->x.server_alert.description) {
                        case 86:
                            if (!FUNC3(banout, PROTO_SAFE, "TLS_FALLBACK_SCSV"))
                                FUNC2(banout, PROTO_SAFE, 
                                      "poodle[TLS_FALLBACK_SCSV] ", AUTO_LEN);
                            break;
                        case 40:
                            if (!FUNC3(banout, PROTO_SAFE, "TLS_FALLBACK_SCSV"))
                                FUNC2(banout, PROTO_SAFE, 
                                          "poodle[no-SSLv3] ", AUTO_LEN);
                            break;
                        default:
                            FUNC2(banout, PROTO_SAFE, 
                                          "poodle[no-SSLv3] ", AUTO_LEN);
                            FUNC4(foo, sizeof(foo), " ALERT(0x%02x%02x) ",
                                      ssl->x.server_alert.level,
                                      ssl->x.server_alert.description
                                      );
                            
                            FUNC2(banout, PROTO_SSL3, foo, AUTO_LEN);
                            break;
                    }
                } else {
                    char foo[64];
                    FUNC4(foo, sizeof(foo), " ALERT(0x%02x%02x) ",
                              ssl->x.server_alert.level,
                              ssl->x.server_alert.description
                              );
                
                    FUNC2(banout, PROTO_SSL3, foo, AUTO_LEN);
                }
                FUNC0(i,length,state);
                
            case UNKNOWN:
            default:
                i = (unsigned)length;
        }
    
    /* not the handshake protocol, but we re-use their variables */
    ssl->handshake.state = state;
    ssl->handshake.remaining = remaining;
}