
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWITCH_S1_TRIS ;
 int SWITCH_S2_TRIS ;

void switch_init(void) {

    SWITCH_S1_TRIS = 1;
    SWITCH_S2_TRIS = 1;
}
