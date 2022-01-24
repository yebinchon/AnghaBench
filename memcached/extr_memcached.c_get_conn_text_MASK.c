#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  transport; } ;
typedef  TYPE_1__ conn ;
typedef  int /*<<< orphan*/  addr_text ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int const,int /*<<< orphan*/ *,char*,int) ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void FUNC7(const conn *c, const int af,
                char* addr, struct sockaddr *sock_addr) {
    char addr_text[MAXPATHLEN];
    addr_text[0] = '\0';
    const char *protoname = "?";
    unsigned short port = 0;
    size_t pathlen = 0;

    switch (af) {
        case AF_INET:
            (void) FUNC1(af,
                    &((struct sockaddr_in *)sock_addr)->sin_addr,
                    addr_text,
                    sizeof(addr_text) - 1);
            port = FUNC2(((struct sockaddr_in *)sock_addr)->sin_port);
            protoname = FUNC0(c->transport) ? "udp" : "tcp";
            break;

        case AF_INET6:
            addr_text[0] = '[';
            addr_text[1] = '\0';
            if (FUNC1(af,
                    &((struct sockaddr_in6 *)sock_addr)->sin6_addr,
                    addr_text + 1,
                    sizeof(addr_text) - 2)) {
                FUNC4(addr_text, "]");
            }
            port = FUNC2(((struct sockaddr_in6 *)sock_addr)->sin6_port);
            protoname = FUNC0(c->transport) ? "udp6" : "tcp6";
            break;

        case AF_UNIX:
            // this strncpy call originally could piss off an address
            // sanitizer; we supplied the size of the dest buf as a limiter,
            // but optimized versions of strncpy could read past the end of
            // *src while looking for a null terminator. Since buf and
            // sun_path here are both on the stack they could even overlap,
            // which is "undefined". In all OSS versions of strncpy I could
            // find this has no effect; it'll still only copy until the first null
            // terminator is found. Thus it's possible to get the OS to
            // examine past the end of sun_path but it's unclear to me if this
            // can cause any actual problem.
            //
            // We need a safe_strncpy util function but I'll punt on figuring
            // that out for now.
            pathlen = sizeof(((struct sockaddr_un *)sock_addr)->sun_path);
            if (MAXPATHLEN <= pathlen) {
                pathlen = MAXPATHLEN - 1;
            }
            FUNC6(addr_text,
                    ((struct sockaddr_un *)sock_addr)->sun_path,
                    pathlen);
            addr_text[pathlen] = '\0';
            protoname = "unix";
            break;
    }

    if (FUNC5(addr_text) < 2) {
        /* Most likely this is a connected UNIX-domain client which
         * has no peer socket address, but there's no portable way
         * to tell for sure.
         */
        FUNC3(addr_text, "<AF %d>", af);
    }

    if (port) {
        FUNC3(addr, "%s:%s:%u", protoname, addr_text, port);
    } else {
        FUNC3(addr, "%s:%s", protoname, addr_text);
    }
}