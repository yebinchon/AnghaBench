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
typedef  unsigned int time_t ;
struct Output {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 char* FUNC2 (unsigned int) ; 
 char* FUNC3 (unsigned int) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (unsigned int) ; 
 char* FUNC6 (unsigned int) ; 

__attribute__((used)) static void
FUNC7(struct Output *out, FILE *fp, time_t timestamp,
    int status, unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    const char *service;
    FUNC0(timestamp);
    FUNC0(out);
    FUNC0(reason);
    FUNC0(ttl);

    if (ip_proto == 6)
        service = FUNC5(port);
    else if (ip_proto == 17)
        service = FUNC6(port);
    else
        service = FUNC3(ip_proto);
    
    FUNC1(fp, "Timestamp: %lu", timestamp);

    FUNC1(fp, "\tHost: %u.%u.%u.%u ()",
                    (unsigned char)(ip>>24),
                    (unsigned char)(ip>>16),
                    (unsigned char)(ip>> 8),
                    (unsigned char)(ip>> 0)
                    );
    FUNC1(fp, "\tPorts: %u/%s/%s/%s/%s/%s/%s\n",
                port,
                FUNC4(status),      //"open", "closed"
                FUNC2(ip_proto),  //"tcp", "udp", "sctp"
                "", //owner
                service, //service
                "", //SunRPC info
                "" //Version info
                );
}