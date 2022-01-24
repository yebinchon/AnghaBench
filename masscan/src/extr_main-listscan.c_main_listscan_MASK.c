#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {int index; int count; } ;
struct TYPE_3__ {unsigned int of; int one; } ;
struct Masscan {int seed; int retries; int max_rate; scalar_t__ is_infinite; scalar_t__ is_test_csv; int /*<<< orphan*/  ports; int /*<<< orphan*/  targets; TYPE_2__ resume; TYPE_1__ shard; int /*<<< orphan*/  blackrock_rounds; } ;
struct BlackRock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct BlackRock*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct BlackRock*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int) ; 

void
FUNC7(struct Masscan *masscan)
{
    uint64_t count_ips;
    uint64_t count_ports;
    uint64_t i;
    uint64_t range;
    uint64_t start;
    uint64_t end;
    struct BlackRock blackrock;
    unsigned increment = masscan->shard.of;
    uint64_t seed = masscan->seed;

    count_ports = FUNC5(&masscan->ports);
    if (count_ports == 0)
        FUNC4(&masscan->ports, 80, 80);
    count_ports = FUNC5(&masscan->ports);

    count_ips = FUNC5(&masscan->targets);
    if (count_ips == 0) {
        FUNC0(0, "FAIL: target IP address list empty\n");
        FUNC0(0, " [hint] try something like \"--range 10.0.0.0/8\"\n");
        FUNC0(0, " [hint] try something like \"--range 192.168.0.100-192.168.0.200\"\n");
        return;
    }

    range = count_ips * count_ports;

infinite:
    FUNC1(&blackrock, range, seed, masscan->blackrock_rounds);

    start = masscan->resume.index + (masscan->shard.one-1);
    end = range;
    if (masscan->resume.count && end > start + masscan->resume.count)
        end = start + masscan->resume.count;
    end += (uint64_t)(masscan->retries * masscan->max_rate);

//printf("start=%llu, end=%llu\n", start, end);
    for (i=start; i<end; ) {
        uint64_t xXx;
        unsigned ip;
        unsigned port;

        xXx = FUNC2(&blackrock,  i);

        ip = FUNC6(&masscan->targets, xXx % count_ips);
        port = FUNC6(&masscan->ports, xXx / count_ips);

        if (count_ports == 1) {
            if (masscan->is_test_csv) {
                /* [KLUDGE] [TEST]
                 * For testing randomness output, prints last two bytes of
                 * IP address as CSV format for import into spreadsheet
                 */
                FUNC3("%u,%u\n",
                       (ip>>8)&0xFF, (ip>>0)&0xFF
                       );
            } else {
                FUNC3("%u.%u.%u.%u\n",
                       (ip>>24)&0xFF, (ip>>16)&0xFF, (ip>>8)&0xFF, (ip>>0)&0xFF
                       );
            }
        } else
            FUNC3("%u.%u.%u.%u:%u\n",
                   (ip>>24)&0xFF, (ip>>16)&0xFF, (ip>>8)&0xFF, (ip>>0)&0xFF,
                   port
                   );

        i += increment; /* <------ increment by 1 normally, more with shards/nics */
    }

    if (masscan->is_infinite) {
        seed++;
        goto infinite;
    }
}