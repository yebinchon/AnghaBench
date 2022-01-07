
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ hash; int value; int * collected8; scalar_t__ name; } ;


 TYPE_1__* pairs ;
 scalar_t__ simple_hash (scalar_t__) ;
 int strcmp (scalar_t__,scalar_t__) ;
 int strtoull (int ,int *,int) ;

void test8() {
    int i;
    for(i = 0; pairs[i].name; i++) {
        uint32_t hash = simple_hash(pairs[i].name);

        int j;
        for(j = 0; pairs[j].name; j++) {
            if(hash == pairs[j].hash && !strcmp(pairs[i].name, pairs[j].name)) {
                *pairs[j].collected8 = strtoull(pairs[i].value, ((void*)0), 10);
                break;
            }
        }
    }
}
