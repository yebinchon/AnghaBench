
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grouping_stddev {int dummy; } ;
struct TYPE_3__ {long group; } ;
typedef TYPE_1__ RRDR ;
typedef int LONG_DOUBLE ;


 void* callocz (int,int) ;

void *grouping_create_stddev(RRDR *r) {
    long entries = r->group;
    if(entries < 0) entries = 0;

    return callocz(1, sizeof(struct grouping_stddev) + entries * sizeof(LONG_DOUBLE));
}
