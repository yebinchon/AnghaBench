
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouping_incremental_sum {int dummy; } ;
typedef int RRDR ;


 void* callocz (int,int) ;

void *grouping_create_incremental_sum(RRDR *r) {
    (void)r;
    return callocz(1, sizeof(struct grouping_incremental_sum));
}
