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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char const*,...) ; 
 char* FUNC1 (char*) ; 

char *FUNC2(int family, const char *protocol, const char *ip, uint16_t port) {
    char buffer[100 + 1];

    switch(family) {
        case AF_INET:
            FUNC0(buffer, 100, "%s:%s:%d", protocol, ip, port);
            break;

        case AF_INET6:
        default:
            FUNC0(buffer, 100, "%s:[%s]:%d", protocol, ip, port);
            break;

        case AF_UNIX:
            FUNC0(buffer, 100, "%s:%s", protocol, ip);
            break;
    }

    return FUNC1(buffer);
}