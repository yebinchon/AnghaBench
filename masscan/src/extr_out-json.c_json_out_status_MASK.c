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
struct Output {int is_first_record_seen; } ;
typedef  int /*<<< orphan*/  reason_buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC2 (unsigned int) ; 
 char* FUNC3 (unsigned int,char*,int) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct Output *out, FILE *fp, time_t timestamp, int status,
               unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    char reason_buffer[128];
    FUNC0(out);
    //UNUSEDPARM(timestamp);

    /* Trailing comma breaks some JSON parsers. We don't know precisely when
     * we'll end, but we do know when we begin, so instead of appending
     * a command to the record, we prepend it -- but not before first record */
    if (out->is_first_record_seen)
        FUNC1(fp, ",\n");
    else
        out->is_first_record_seen = 1;
    
    FUNC1(fp, "{ ");
    FUNC1(fp, "  \"ip\": \"%u.%u.%u.%u\", ",
            (ip>>24)&0xFF, (ip>>16)&0xFF, (ip>> 8)&0xFF, (ip>> 0)&0xFF);
    FUNC1(fp, "  \"timestamp\": \"%d\", \"ports\": [ {\"port\": %u, \"proto\": \"%s\", \"status\": \"%s\","
                " \"reason\": \"%s\", \"ttl\": %u} ] ",
                (int) timestamp,
                port,
                FUNC2(ip_proto),
                FUNC4(status),
                FUNC3(reason, reason_buffer, sizeof(reason_buffer)),
                ttl
            );
    FUNC1(fp, "}\n");


}