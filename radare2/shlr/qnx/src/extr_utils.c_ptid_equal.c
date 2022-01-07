
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; scalar_t__ tid; } ;
typedef TYPE_1__ ptid_t ;



int ptid_equal (ptid_t ptid1, ptid_t ptid2) {
 return ptid1.pid == ptid2.pid && ptid1.tid == ptid2.tid;
}
