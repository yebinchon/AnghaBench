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
struct RangeList {int /*<<< orphan*/  member_0; } ;
struct PayloadsUDP {int dummy; } ;
struct PayloadUDP_Default {int length; int /*<<< orphan*/  set_cookie; int /*<<< orphan*/  source_port; scalar_t__ buf; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 struct PayloadsUDP* FUNC0 (int,int) ; 
 struct PayloadUDP_Default* hard_coded_udp_payloads ; 
 int /*<<< orphan*/  FUNC1 (struct PayloadsUDP*,unsigned char const*,unsigned int,struct RangeList*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct RangeList*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct RangeList*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

struct PayloadsUDP *
FUNC5(void)
{
    unsigned i;
    struct PayloadsUDP *payloads;
    struct PayloadUDP_Default *hard_coded = hard_coded_udp_payloads;
    
    payloads = FUNC0(1, sizeof(*payloads));
    
    /*
     * For popular parts, include some hard-coded default UDP payloads
     */
    for (i=0; hard_coded[i].length; i++) {
        //struct Range range;
        struct RangeList list = {0};
        unsigned length;

        /* Kludge: create a pseudo-rangelist to hold the one port */
        /*list.list = &range;
        list.count = 1;
        range.begin = hard_coded[i].port;
        range.end = range.begin;*/
        FUNC2(&list, hard_coded[i].port, hard_coded[i].port);

        length = hard_coded[i].length;
        if (length == 0xFFFFFFFF)
            length = (unsigned)FUNC4(hard_coded[i].buf);

        /* Add this to our real payloads. This will get overwritten
         * if the user adds their own with the same port */
        FUNC1(payloads,
                    (const unsigned char*)hard_coded[i].buf,
                    length,
                    &list,
                    hard_coded[i].source_port,
                    hard_coded[i].set_cookie);

        FUNC3(&list);
    }
    return payloads;
}