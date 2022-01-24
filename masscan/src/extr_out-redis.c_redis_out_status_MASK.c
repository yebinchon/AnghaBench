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
typedef  int /*<<< orphan*/  values ;
typedef  scalar_t__ time_t ;
struct TYPE_2__ {int /*<<< orphan*/  outstanding; } ;
struct Output {TYPE_1__ redis; } ;
typedef  scalar_t__ ptrdiff_t ;
typedef  int /*<<< orphan*/  port_string ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  ip_string ;
typedef  int /*<<< orphan*/  SOCKET ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct Output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (unsigned int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,char*,int,...) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct Output *out, FILE *fp, time_t timestamp,
    int status, unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    ptrdiff_t fd = (ptrdiff_t)fp;
    char line[1024];
    int line_length;
    char ip_string[16];
    char port_string[10];
    int ip_string_length;
    int port_string_length;
    size_t count;
    char values[64];
    int values_length;

    ip_string_length = FUNC5(ip_string, sizeof(ip_string), "%u.%u.%u.%u",
        (unsigned char)(ip>>24),
        (unsigned char)(ip>>16),
        (unsigned char)(ip>> 8),
        (unsigned char)(ip>> 0));
    port_string_length = FUNC5(port_string, sizeof(port_string), "%u/%s", port, FUNC3(ip_proto));

/**3
$3
SET
$5
mykey
$7
myvalue
*/

    /*
     * KEY: "host"
     * VALUE: ip
     */
    FUNC5(line, sizeof(line),
            "*3\r\n"
            "$4\r\nSADD\r\n"
            "$%d\r\n%s\r\n"
            "$%d\r\n%s\r\n"
            ,
            4, "host",
            ip_string_length, ip_string
            );

    count = FUNC4((SOCKET)fd, line, (int)FUNC6(line), 0);
    if (count != FUNC6(line)) {
        FUNC0(0, "redis: error sending data\n");
        FUNC2(1);
    }
    out->redis.outstanding++;

    /*
     * KEY: ip
     * VALUE: port
     */
    FUNC5(line, sizeof(line),
            "*3\r\n"
            "$4\r\nSADD\r\n"
            "$%d\r\n%s\r\n"
            "$%d\r\n%s\r\n"
            ,
            ip_string_length, ip_string,
            port_string_length, port_string);

    count = FUNC4((SOCKET)fd, line, (int)FUNC6(line), 0);
    if (count != FUNC6(line)) {
        FUNC0(0, "redis: error sending data\n");
        FUNC2(1);
    }
    out->redis.outstanding++;


    /*
     * KEY: ip:port
     * VALUE: timestamp:status:reason:ttl
     */
    values_length = FUNC5(values, sizeof(values), "%u:%u:%u:%u",
        (unsigned)timestamp, status, reason, ttl);
    line_length = FUNC5(line, sizeof(line),
            "*3\r\n"
            "$4\r\nSADD\r\n"
            "$%d\r\n%s:%s\r\n"
            "$%d\r\n%s\r\n"
            ,
            ip_string_length + 1 + port_string_length,
            ip_string, port_string,
            values_length, values
            );

    count = FUNC4((SOCKET)fd, line, (int)line_length, 0);
    if (count != (size_t)line_length) {
        FUNC0(0, "redis: error sending data\n");
        FUNC2(1);
    }
    out->redis.outstanding++;

    FUNC1(out, (SOCKET)fd);

}