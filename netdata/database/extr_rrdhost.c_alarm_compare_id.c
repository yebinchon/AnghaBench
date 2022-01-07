
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ id; } ;
typedef TYPE_1__ RRDCALC ;



int alarm_compare_id(void *a, void *b) {
    register uint32_t hash1 = ((RRDCALC *)a)->id;
    register uint32_t hash2 = ((RRDCALC *)b)->id;

    if(hash1 < hash2) return -1;
    else if(hash1 > hash2) return 1;

    return 0;
}
