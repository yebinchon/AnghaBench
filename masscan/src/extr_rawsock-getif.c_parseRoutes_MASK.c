#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int ;
struct rtmsg {scalar_t__ rtm_family; scalar_t__ rtm_table; } ;
struct rtattr {int rta_type; } ;
struct TYPE_6__ {void* s_addr; } ;
struct TYPE_5__ {void* s_addr; } ;
struct TYPE_4__ {void* s_addr; } ;
struct route_info {int priority; TYPE_3__ dstAddr; TYPE_2__ srcAddr; TYPE_1__ gateWay; int /*<<< orphan*/  ifName; } ;
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ FUNC0 (struct nlmsghdr*) ; 
 scalar_t__ FUNC1 (struct rtattr*) ; 
#define  RTA_DST 132 
#define  RTA_GATEWAY 131 
 struct rtattr* FUNC2 (struct rtattr*,int) ; 
#define  RTA_OIF 130 
 scalar_t__ FUNC3 (struct rtattr*,int) ; 
#define  RTA_PREFSRC 129 
#define  RTA_PRIORITY 128 
 int FUNC4 (struct nlmsghdr*) ; 
 scalar_t__ FUNC5 (struct rtmsg*) ; 
 scalar_t__ RT_TABLE_MAIN ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nlmsghdr *nlHdr, struct route_info *rtInfo)
{
    struct rtmsg *rtMsg;
    struct rtattr *rtAttr;
    int rtLen = 0;

    rtMsg = (struct rtmsg *) FUNC0(nlHdr);

    /* This must be an IPv4 (AF_INET) route */
    if (rtMsg->rtm_family != AF_INET)
        return 1;

    /* This must be in main routing table */
    if (rtMsg->rtm_table != RT_TABLE_MAIN)
        return 1;

    /* Attributes field*/
    rtAttr = (struct rtattr *)FUNC5(rtMsg);
    rtLen = FUNC4(nlHdr);
#define FORMATADDR(n) ((n)&0xFF), ((n>>8)&0xFF), ((n>>16)&0xFF), ((n>>24)&0xFF)
    for (; FUNC3(rtAttr, rtLen); rtAttr = FUNC2(rtAttr, rtLen)) {
        switch (rtAttr->rta_type) {
        case RTA_OIF:
            FUNC6(*(int *) FUNC1(rtAttr), rtInfo->ifName);
            //LOG(4, "ifname=%s ", rtInfo->ifName);
            break;
        case RTA_GATEWAY:
            rtInfo->gateWay.s_addr = *(u_int *)FUNC1(rtAttr);
            //LOG(4, "gw=%u.%u.%u.%u ", FORMATADDR(rtInfo->gateWay.s_addr));
            break;
        case RTA_PREFSRC:
            rtInfo->srcAddr.s_addr = *(u_int *)FUNC1(rtAttr);
            //LOG(4, "src=%u.%u.%u.%u ", FORMATADDR(rtInfo->srcAddr.s_addr));
            break;
        case RTA_DST:
            rtInfo->dstAddr .s_addr = *(u_int *)FUNC1(rtAttr);
            //LOG(4, "dst=%u.%u.%u.%u ", FORMATADDR(rtInfo->dstAddr.s_addr));
            break;
        case RTA_PRIORITY:
            rtInfo->priority = *(int*)FUNC1(rtAttr);
            //LOG(4, "priority=0x%08x ", rtInfo->priority);
            break;
        default:
            //LOG(4, "rta_type=%d ", rtAttr->rta_type)
            ;
        }
    }
    //LOG(4, "\n");

    return 0;
}