#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tcb_state ;
struct ProtocolState {int dummy; } ;
struct InteractiveData {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int dummy; } ;
struct TYPE_10__ {int (* selftest ) () ;} ;
struct TYPE_9__ {int (* selftest ) () ;} ;
struct TYPE_8__ {int (* selftest ) () ;} ;
struct TYPE_7__ {int (* selftest ) () ;} ;
struct TYPE_6__ {int (* selftest ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_HTTP ; 
 struct Banner1* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct Banner1*) ; 
 int /*<<< orphan*/  FUNC2 (struct Banner1*,struct ProtocolState*,unsigned char const*,unsigned int,struct BannerOutput*,struct InteractiveData*) ; 
 TYPE_5__ banner_http ; 
 TYPE_4__ banner_rdp ; 
 TYPE_3__ banner_smb1 ; 
 TYPE_2__ banner_ssl ; 
 TYPE_1__ banner_telnet ; 
 int /*<<< orphan*/  FUNC3 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC4 (struct BannerOutput*) ; 
 scalar_t__ FUNC5 () ; 
 unsigned char* FUNC6 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ProtocolState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char const*) ; 
 int FUNC12 () ; 
 int FUNC13 () ; 
 int FUNC14 () ; 
 int FUNC15 () ; 
 int FUNC16 () ; 

int
FUNC17()
{
    unsigned i;
    struct Banner1 *b;
    struct ProtocolState tcb_state[1];
    const unsigned char *px;
    unsigned length;
    struct BannerOutput banout[1];
    static const char *http_header =
        "HTTP/1.0 302 Redirect\r\n"
        "Date: Tue, 03 Sep 2013 06:50:01 GMT\r\n"
        "Connection: close\r\n"
        "Via: HTTP/1.1 ir14.fp.bf1.yahoo.com (YahooTrafficServer/1.2.0.13 [c s f ])\r\n"
        "Server: YTS/1.20.13\r\n"
        "Cache-Control: no-store\r\n"
        "Content-Type: text/html\r\n"
        "Content-Language: en\r\n"
        "Location: http://failsafe.fp.yahoo.com/404.html\r\n"
        "Content-Length: 227\r\n"
        "\r\n<title>hello</title>\n";
    px = (const unsigned char *)http_header;
    length = (unsigned)FUNC11(http_header);


    /*
     * First, test the "banout" subsystem
     */
    if (FUNC5() != 0) {
        FUNC7(stderr, "banout: failed\n");
        return 1;
    }


    /*
     * Test one character at a time
     */
    b = FUNC0();
    FUNC3(banout);

    FUNC9(tcb_state, 0, sizeof(tcb_state[0]));

    for (i=0; i<length; i++) {
        struct InteractiveData more = {0,0};

        FUNC2(
                    b,
                    tcb_state,
                    px+i, 1,
                    banout,
                    &more);
    }


    {
        const unsigned char *s = FUNC6(banout, PROTO_HTTP);
        if (FUNC8(s, "HTTP/1.0 302", 11) != 0) {
            FUNC10("banner1: test failed\n");
            return 1;
        }
    }
    FUNC4(banout);
    FUNC1(b);

    /*
     * Test whole buffer
     */
    b = FUNC0();

    FUNC9(tcb_state, 0, sizeof(tcb_state[0]));

    FUNC2(
                    b,
                    tcb_state,
                    px, length,
                    banout,
                    0);
    FUNC1(b);
    /*if (memcmp(banner, "Via:HTTP/1.1", 11) != 0) {
        printf("banner1: test failed\n");
        return 1;
    }*/


    {
        int x = 0;

        x = banner_ssl.selftest();
        if (x) {
            FUNC7(stderr, "SSL banner: selftest failed\n");
            return 1;
        }
        
        x = banner_smb1.selftest();
        if (x) {
            FUNC7(stderr, "SMB banner: selftest failed\n");
            return 1;
        }
        
        x = banner_http.selftest();
        if (x) {
            FUNC7(stderr, "HTTP banner: selftest failed\n");
            return 1;
        }
        
        x = banner_telnet.selftest();
        if (x) {
            FUNC7(stderr, "Telnet banner: selftest failed\n");
            return 1;
        }
        
        x = banner_rdp.selftest();
        if (x) {
            FUNC7(stderr, "RDP banner: selftest failed\n");
            return 1;
        }
        
        return x;
    }
}