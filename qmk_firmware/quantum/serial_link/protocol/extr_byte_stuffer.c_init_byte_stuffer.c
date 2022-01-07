
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_LINKS ;
 int init_byte_stuffer_state (int *) ;
 int * states ;

void init_byte_stuffer(void) {
    int i;
    for (i = 0; i < NUM_LINKS; i++) {
        init_byte_stuffer_state(&states[i]);
    }
}
