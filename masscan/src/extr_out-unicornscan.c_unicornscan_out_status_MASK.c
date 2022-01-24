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
typedef  struct Output* time_t ;
struct Output {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC2 (unsigned int) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (unsigned int) ; 

__attribute__((used)) static void
FUNC5(struct Output *out, FILE *fp, time_t timestamp,
    int status, unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    FUNC0(reason);
    FUNC0(out);
    FUNC0(timestamp);

    if (ip_proto == 6) {
      FUNC1(fp,"TCP %s\t%16s[%5d]\t\tfrom %u.%u.%u.%u  ttl %-3d\n",
              FUNC3(status),
              FUNC4(port),
              port,
              (ip>>24)&0xFF,
              (ip>>16)&0xFF,
              (ip>> 8)&0xFF,
              (ip>> 0)&0xFF,
              ttl);
    } else {
        /* unicornscan is TCP only, so just use grepable format for other protocols */
        FUNC1(fp, "Host: %u.%u.%u.%u ()",
                (unsigned char)(ip>>24),
                (unsigned char)(ip>>16),
                (unsigned char)(ip>> 8),
                (unsigned char)(ip>> 0)
                );
        FUNC1(fp, "\tPorts: %u/%s/%s/%s/%s/%s/%s\n",
                port,
                FUNC3(status),      //"open", "closed"
                FUNC2(ip_proto),  //"tcp", "udp", "sctp"
                "", //owner
                "", //service
                "", //SunRPC info
                "" //Version info
                );
    }
}