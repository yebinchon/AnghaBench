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
typedef  scalar_t__ uint64_t ;
struct TCP_ConnectionTable {unsigned int timeout_connection; unsigned int timeout_hello; struct Banner1* banner1; } ;
struct ProtocolParserStream {char* name; void* hello; void* hello_length; } ;
struct TYPE_2__ {struct ProtocolParserStream** tcp; } ;
struct Banner1 {int is_heartbleed; int is_ticketbleed; int is_poodle_sslv3; TYPE_1__ payloads; } ;

/* Variables and functions */
 struct ProtocolParserStream* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 void* FUNC2 (size_t) ; 
 struct ProtocolParserStream banner_http ; 
 int /*<<< orphan*/  banner_smb1 ; 
 struct ProtocolParserStream banner_ssl ; 
 void* FUNC3 (char*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 void* FUNC6 (unsigned char**,unsigned int,char*,unsigned char const*,unsigned int) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (void*,int,int) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssl_hello_heartbeat_template ; 
 void* FUNC12 (void*) ; 
 int /*<<< orphan*/  ssl_hello_sslv3_template ; 
 int /*<<< orphan*/  ssl_hello_ticketbleed_template ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (char const*,char) ; 
 scalar_t__ FUNC14 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15(struct TCP_ConnectionTable *tcpcon,
                        const char *name,
                        size_t value_length,
                        const void *value)
{
    struct Banner1 *banner1 = tcpcon->banner1;

    /*
     * You can reset your user-agent here. Whenever I do a scan, I always
     * reset my user-agent. That's now you know it's not me scanning
     * you on the open Internet -- I would never use the default user-agent
     * string built into masscan
     */
    if (FUNC7(name, "http-user-agent")) {
        banner_http.hello_length = FUNC6(
                                (unsigned char**)&banner_http.hello,
                                (unsigned)banner_http.hello_length,
                                "User-Agent:",
                                (const unsigned char *)value,
                                (unsigned)value_length);
        return;
    }

    if (FUNC7(name, "timeout") || FUNC7(name, "connection-timeout")) {
        uint64_t n = FUNC8(value, value_length);
        tcpcon->timeout_connection = (unsigned)n;
        FUNC1(1, "TCP connection-timeout = %u\n", tcpcon->timeout_connection);
        return;
    }
    if (FUNC7(name, "hello-timeout")) {
        uint64_t n = FUNC8(value, value_length);
        tcpcon->timeout_hello = (unsigned)n;
        FUNC1(1, "TCP hello-timeout = \"%.*s\"\n", (int)value_length, (const char *)value);
        FUNC1(1, "TCP hello-timeout = %u\n", (unsigned)tcpcon->timeout_hello);
        return;
    }

    /*
     * Force SSL processing on all ports
     */
    if (FUNC7(name, "hello") && FUNC7(value, "ssl")) {
        unsigned i;
        
        FUNC1(2, "HELLO: setting SSL hello message\n");
        for (i=0; i<65535; i++) {
            banner1->payloads.tcp[i] = &banner_ssl;
        }
        
        return;
    }
    
    /*
     * Force HTTP processing on all ports
     */
    if (FUNC7(name, "hello") && FUNC7(value, "http")) {
        unsigned i;
        
        FUNC1(2, "HELLO: setting HTTP hello message\n");
        for (i=0; i<65535; i++) {
            banner1->payloads.tcp[i] = &banner_http;
        }
        
        return;
    }
    
    /*
     * Downgrade SMB hello from v1/v2 to use only v1
     */
    if (FUNC7(name, "hello") && FUNC7(value, "smbv1")) {
        FUNC9(&banner_smb1);        
        return;
    }

    /*
     * 2014-04-08: scan for Neel Mehta's "heartbleed" bug
     */
    if (FUNC7(name, "heartbleed")) {
        unsigned i;

        /* Change the hello message to including negotiating the use of 
         * the "heartbeat" extension */
        banner_ssl.hello = FUNC11(ssl_hello_heartbeat_template);
        banner_ssl.hello_length = FUNC12(banner_ssl.hello);
        tcpcon->banner1->is_heartbleed = 1;

        for (i=0; i<65535; i++) {
            banner1->payloads.tcp[i] = &banner_ssl;
        }

        return;
    }

    if (FUNC7(name, "ticketbleed")) {
        unsigned i;

        /* Change the hello message to including negotiating the use of 
         * the "heartbeat" extension */
        banner_ssl.hello = FUNC11(ssl_hello_ticketbleed_template);
        banner_ssl.hello_length = FUNC12(banner_ssl.hello);
        tcpcon->banner1->is_ticketbleed = 1;

        for (i=0; i<65535; i++) {
            banner1->payloads.tcp[i] = &banner_ssl;
        }

        return;
    }

    /*
     * 2014-10-16: scan for SSLv3 servers (POODLE)
     */
    if (FUNC7(name, "poodle") || FUNC7(name, "sslv3")) {
        unsigned i;
        void *px;
        
        /* Change the hello message to including negotiating the use of 
         * the "heartbeat" extension */
        px = FUNC11(ssl_hello_sslv3_template);
        banner_ssl.hello = FUNC10(px, 0x5600, 1);
        banner_ssl.hello_length = FUNC12(banner_ssl.hello);
        tcpcon->banner1->is_poodle_sslv3 = 1;

        for (i=0; i<65535; i++) {
            banner1->payloads.tcp[i] = &banner_ssl;
        }
        
        return;
    }

    
    /*
     * You can reconfigure the "hello" message to be anything
     * you want.
     */
    if (FUNC7(name, "hello-string")) {
        struct ProtocolParserStream *x;
        const char *p = FUNC13(name, '[');
        unsigned port;


        if (p == NULL) {
            FUNC5(stderr, "tcpcon: parmeter: expected array []: %s\n", name);
            FUNC4(1);
        }
        port = (unsigned)FUNC14(p+1, 0, 0);

        x = banner1->payloads.tcp[port];
        if (x == NULL) {
            x = FUNC0(1, sizeof(*x));
            x->name = "(allocated)";
        }

        x->hello = FUNC2(value_length);
        x->hello_length = FUNC3((char*)x->hello, value_length, value, value_length);

        banner1->payloads.tcp[port] = x;
    }

}