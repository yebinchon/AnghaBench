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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 char* FUNC2 (unsigned int) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct Output *out, FILE *fp, time_t timestamp,
    int status, unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    FUNC0(ttl);
    FUNC0(reason);
    FUNC0(out);


    FUNC1(fp, "%s %s %u %u.%u.%u.%u %u\n",
        FUNC3(status),
        FUNC2(ip_proto),
        port,
        (ip>>24)&0xFF,
        (ip>>16)&0xFF,
        (ip>> 8)&0xFF,
        (ip>> 0)&0xFF,
        (unsigned)timestamp
        );
}