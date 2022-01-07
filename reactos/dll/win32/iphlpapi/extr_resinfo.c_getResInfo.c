
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nsaddr_list; int nscount; } ;
struct TYPE_5__ {int riAddressList; int riCount; } ;
typedef TYPE_1__* PIPHLP_RES_INFO ;


 TYPE_1__ ResInfo ;
 TYPE_3__ _res ;

PIPHLP_RES_INFO getResInfo() {
    ResInfo.riCount = _res.nscount;
    ResInfo.riAddressList = _res.nsaddr_list;
    return &ResInfo;
}
