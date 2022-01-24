#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONNECT_TO ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int SOCK_DGRAM ; 
 int SOCK_STREAM ; 
 int FUNC0 (int,int,char*,scalar_t__,char*,struct timeval*) ; 
 int FUNC1 (char*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

int FUNC9(const char *definition, int default_port, struct timeval *timeout) {
    char buffer[FUNC7(definition) + 1];
    FUNC6(buffer, definition);

    char default_service[10 + 1];
    FUNC5(default_service, 10, "%d", default_port);

    char *host = buffer, *service = default_service, *interface = "";
    int protocol = IPPROTO_TCP, socktype = SOCK_STREAM;
    uint32_t scope_id = 0;

    if(FUNC8(host, "tcp:", 4) == 0) {
        host += 4;
        protocol = IPPROTO_TCP;
        socktype = SOCK_STREAM;
    }
    else if(FUNC8(host, "udp:", 4) == 0) {
        host += 4;
        protocol = IPPROTO_UDP;
        socktype = SOCK_DGRAM;
    }
    else if(FUNC8(host, "unix:", 5) == 0) {
        char *path = host + 5;
        return FUNC1(path, timeout);
    }

    char *e = host;
    if(*e == '[') {
        e = ++host;
        while(*e && *e != ']') e++;
        if(*e == ']') {
            *e = '\0';
            e++;
        }
    }
    else {
        while(*e && *e != ':' && *e != '%') e++;
    }

    if(*e == '%') {
        *e = '\0';
        e++;
        interface = e;
        while(*e && *e != ':') e++;
    }

    if(*e == ':') {
        *e = '\0';
        e++;
        service = e;
    }

    FUNC2(D_CONNECT_TO, "Attempting connection to host = '%s', service = '%s', interface = '%s', protocol = %d (tcp = %d, udp = %d)", host, service, interface, protocol, IPPROTO_TCP, IPPROTO_UDP);

    if(!*host) {
        FUNC3("Definition '%s' does not specify a host.", definition);
        return -1;
    }

    if(*interface) {
        scope_id = FUNC4(interface);
        if(!scope_id)
            FUNC3("Cannot find a network interface named '%s'. Continuing with limiting the network interface", interface);
    }

    if(!*service)
        service = default_service;


    return FUNC0(protocol, socktype, host, scope_id, service, timeout);
}