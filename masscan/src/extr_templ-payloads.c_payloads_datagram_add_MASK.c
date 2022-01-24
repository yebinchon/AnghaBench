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
typedef  scalar_t__ uint64_t ;
struct RangeList {int dummy; } ;
struct PayloadsUDP {unsigned int count; unsigned int max; struct PayloadUDP_Item** list; } ;
struct PayloadUDP_Item {scalar_t__ port; unsigned int source_port; unsigned int length; int /*<<< orphan*/  set_cookie; int /*<<< orphan*/  xsum; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  SET_COOKIE ;

/* Variables and functions */
 struct PayloadUDP_Item* FUNC0 (int) ; 
 struct PayloadUDP_Item** FUNC1 (struct PayloadUDP_Item**,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct PayloadUDP_Item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct PayloadUDP_Item**,struct PayloadUDP_Item**,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,size_t) ; 
 scalar_t__ FUNC6 (struct RangeList*) ; 
 scalar_t__ FUNC7 (struct RangeList*,scalar_t__) ; 

__attribute__((used)) static unsigned
FUNC8(struct PayloadsUDP *payloads,
            const unsigned char *buf, size_t length,
            struct RangeList *ports, unsigned source_port,
            SET_COOKIE set_cookie)
{
    unsigned count = 1;
    struct PayloadUDP_Item *p;
    uint64_t port_count = FUNC6(ports);
    uint64_t i;

    for (i=0; i<port_count; i++) {
        /* grow the list if we need to */
        if (payloads->count + 1 > payloads->max) {
            size_t new_max = payloads->max*2 + 1;
            payloads->list = FUNC1(payloads->list, new_max, sizeof(payloads->list[0]));
            payloads->max = new_max;
        }

        /* allocate space for this record */
        p = FUNC0(sizeof(p[0]) + length);
        p->port = FUNC7(ports, i);
        p->source_port = source_port;
        p->length = (unsigned)length;
        FUNC3(p->buf, buf, length);
        p->xsum = FUNC5(buf, length);
        p->set_cookie = set_cookie;

        /* insert in sorted order */
        {
            unsigned j;

            for (j=0; j<payloads->count; j++) {
                if (p->port <= payloads->list[j]->port)
                    break;
            }

            if (j < payloads->count) {
                if (p->port == payloads->list[j]->port) {
                    FUNC2(payloads->list[j]);
                    count = 0; /* don't increment count */
                } else
                    FUNC4(payloads->list + j + 1,
                            payloads->list + j,
                            (payloads->count-j) * sizeof(payloads->list[0]));
            }
            payloads->list[j] = p;

            payloads->count += count;
        }
    }
    return count; /* zero or one */
}