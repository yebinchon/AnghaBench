
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u_int ;
struct rtmsg {scalar_t__ rtm_family; scalar_t__ rtm_table; } ;
struct rtattr {int rta_type; } ;
struct TYPE_6__ {void* s_addr; } ;
struct TYPE_5__ {void* s_addr; } ;
struct TYPE_4__ {void* s_addr; } ;
struct route_info {int priority; TYPE_3__ dstAddr; TYPE_2__ srcAddr; TYPE_1__ gateWay; int ifName; } ;
struct nlmsghdr {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ NLMSG_DATA (struct nlmsghdr*) ;
 scalar_t__ RTA_DATA (struct rtattr*) ;


 struct rtattr* RTA_NEXT (struct rtattr*,int) ;

 scalar_t__ RTA_OK (struct rtattr*,int) ;


 int RTM_PAYLOAD (struct nlmsghdr*) ;
 scalar_t__ RTM_RTA (struct rtmsg*) ;
 scalar_t__ RT_TABLE_MAIN ;
 int if_indextoname (int,int ) ;

__attribute__((used)) static int parseRoutes(struct nlmsghdr *nlHdr, struct route_info *rtInfo)
{
    struct rtmsg *rtMsg;
    struct rtattr *rtAttr;
    int rtLen = 0;

    rtMsg = (struct rtmsg *) NLMSG_DATA(nlHdr);


    if (rtMsg->rtm_family != AF_INET)
        return 1;


    if (rtMsg->rtm_table != RT_TABLE_MAIN)
        return 1;


    rtAttr = (struct rtattr *)RTM_RTA(rtMsg);
    rtLen = RTM_PAYLOAD(nlHdr);

    for (; RTA_OK(rtAttr, rtLen); rtAttr = RTA_NEXT(rtAttr, rtLen)) {
        switch (rtAttr->rta_type) {
        case 130:
            if_indextoname(*(int *) RTA_DATA(rtAttr), rtInfo->ifName);

            break;
        case 131:
            rtInfo->gateWay.s_addr = *(u_int *)RTA_DATA(rtAttr);

            break;
        case 129:
            rtInfo->srcAddr.s_addr = *(u_int *)RTA_DATA(rtAttr);

            break;
        case 132:
            rtInfo->dstAddr .s_addr = *(u_int *)RTA_DATA(rtAttr);

            break;
        case 128:
            rtInfo->priority = *(int*)RTA_DATA(rtAttr);

            break;
        default:

            ;
        }
    }


    return 0;
}
