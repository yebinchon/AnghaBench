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
typedef  enum ApplicationProtocol { ____Placeholder_ApplicationProtocol } ApplicationProtocol ;
typedef  int /*<<< orphan*/  banner_buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,char*,char*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (unsigned int) ; 
 char* FUNC4 (unsigned char const*,unsigned int,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct Output *out, FILE *fp, time_t timestamp,
        unsigned ip, unsigned ip_proto, unsigned port,
        enum ApplicationProtocol proto, unsigned ttl,
        const unsigned char *px, unsigned length)
{
    char banner_buffer[4096];


    FUNC0(out);
    FUNC0(ttl);

    FUNC1(fp, "%s %s %u %u.%u.%u.%u %u %s %s\n",
        "banner",
        FUNC3(ip_proto),
        port,
        (ip>>24)&0xFF,
        (ip>>16)&0xFF,
        (ip>> 8)&0xFF,
        (ip>> 0)&0xFF,
        (unsigned)timestamp,
        FUNC2(proto),
        FUNC4(px, length, banner_buffer, sizeof(banner_buffer))
        );
}