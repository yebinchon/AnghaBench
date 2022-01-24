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
struct addrinfo {int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_family; } ;
typedef  int in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EAI_SYSTEM ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct addrinfo *FUNC5(const char *hostname, in_port_t port)
{
    struct addrinfo *ai = 0;
    struct addrinfo hints = { .ai_family = AF_UNSPEC,
                              .ai_protocol = IPPROTO_TCP,
                              .ai_socktype = SOCK_STREAM };
    char service[NI_MAXSERV];
    int error;

    (void)FUNC4(service, NI_MAXSERV, "%d", port);
    if ((error = FUNC2(hostname, service, &hints, &ai)) != 0) {
       if (error != EAI_SYSTEM) {
          FUNC0(stderr, "getaddrinfo(): %s\n", FUNC1(error));
       } else {
          FUNC3("getaddrinfo()");
       }
    }

    return ai;
}