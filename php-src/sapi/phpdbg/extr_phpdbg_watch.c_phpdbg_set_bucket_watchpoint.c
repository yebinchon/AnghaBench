
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ phpdbg_watchpoint_t ;
typedef int Bucket ;


 int WATCH_ON_BUCKET ;
 int phpdbg_set_addr_watchpoint (int *,int,TYPE_1__*) ;

void phpdbg_set_bucket_watchpoint(Bucket *bucket, phpdbg_watchpoint_t *watch) {
 phpdbg_set_addr_watchpoint(bucket, sizeof(Bucket), watch);
 watch->type = WATCH_ON_BUCKET;
}
