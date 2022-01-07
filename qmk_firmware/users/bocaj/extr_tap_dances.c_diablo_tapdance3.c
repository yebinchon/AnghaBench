
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qk_tap_dance_state_t ;


 int diablo_tapdance_master (int *,void*,int) ;

void diablo_tapdance3(qk_tap_dance_state_t *state, void *user_data) { diablo_tapdance_master(state, user_data, 2); }
