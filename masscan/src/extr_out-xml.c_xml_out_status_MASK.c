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
typedef  scalar_t__ time_t ;
struct Output {int dummy; } ;
typedef  int /*<<< orphan*/  reason_buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,char*,unsigned int,char*,char*,unsigned int) ; 
 char* FUNC2 (unsigned int) ; 
 char* FUNC3 (unsigned int,char*,int) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct Output *out, FILE *fp, time_t timestamp, int status,
               unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    char reason_buffer[128];
    FUNC0(out);
    FUNC1(fp, "<host endtime=\"%u\">"
                    "<address addr=\"%u.%u.%u.%u\" addrtype=\"ipv4\"/>"
                    "<ports>"
                    "<port protocol=\"%s\" portid=\"%u\">"
                    "<state state=\"%s\" reason=\"%s\" reason_ttl=\"%u\"/>"
                    "</port>"
                    "</ports>"
                "</host>"
                "\r\n",
        (unsigned)timestamp,
        (ip>>24)&0xFF,
        (ip>>16)&0xFF,
        (ip>> 8)&0xFF,
        (ip>> 0)&0xFF,
        FUNC2(ip_proto),
        port,
        FUNC4(status),
        FUNC3(reason, reason_buffer, sizeof(reason_buffer)),
        ttl
        );
}