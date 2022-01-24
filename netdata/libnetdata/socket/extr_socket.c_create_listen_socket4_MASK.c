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
typedef  char* uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  D_LISTENER ; 
 int SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,void*) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC13(int socktype, const char *ip, uint16_t port, int listen_backlog) {
    int sock;

    FUNC2(D_LISTENER, "LISTENER: IPv4 creating new listening socket on ip '%s' port %d, socktype %d", ip, port, socktype);

    sock = FUNC12(AF_INET, socktype, 0);
    if(sock < 0) {
        FUNC3("LISTENER: IPv4 socket() on ip '%s' port %d, socktype %d failed.", ip, port, socktype);
        return -1;
    }

    FUNC10(sock, 1);
    FUNC11(sock, 1);
    FUNC9(sock);
    FUNC8(sock);

    struct sockaddr_in name;
    FUNC7(&name, 0, sizeof(struct sockaddr_in));
    name.sin_family = AF_INET;
    name.sin_port = FUNC4 (port);

    int ret = FUNC5(AF_INET, ip, (void *)&name.sin_addr.s_addr);
    if(ret != 1) {
        FUNC3("LISTENER: Failed to convert IP '%s' to a valid IPv4 address.", ip);
        FUNC1(sock);
        return -1;
    }

    if(FUNC0 (sock, (struct sockaddr *) &name, sizeof (name)) < 0) {
        FUNC1(sock);
        FUNC3("LISTENER: IPv4 bind() on ip '%s' port %d, socktype %d failed.", ip, port, socktype);
        return -1;
    }

    if(socktype == SOCK_STREAM && FUNC6(sock, listen_backlog) < 0) {
        FUNC1(sock);
        FUNC3("LISTENER: IPv4 listen() on ip '%s' port %d, socktype %d failed.", ip, port, socktype);
        return -1;
    }

    FUNC2(D_LISTENER, "LISTENER: Listening on IPv4 ip '%s' port %d, socktype %d", ip, port, socktype);
    return sock;
}