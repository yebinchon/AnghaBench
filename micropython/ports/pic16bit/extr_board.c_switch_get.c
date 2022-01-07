
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWITCH_S1 ;
 int SWITCH_S2 ;

int switch_get(int sw) {
    int val = 1;
    switch (sw) {
        case 1: val = SWITCH_S1; break;
        case 2: val = SWITCH_S2; break;
    }
    return val == 0;
}
