
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash; int name; } ;
typedef TYPE_1__ RRDCALC ;


 int strcmp (int ,int ) ;

int alarm_compare_name(void *a, void *b) {
    RRDCALC *in1 = (RRDCALC *)a;
    RRDCALC *in2 = (RRDCALC *)b;

    if(in1->hash < in2->hash) return -1;
    else if(in1->hash > in2->hash) return 1;

    return strcmp(in1->name,in2->name);
}
