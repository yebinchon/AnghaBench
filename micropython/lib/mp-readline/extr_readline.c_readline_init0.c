
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_STATE_PORT (int ) ;
 int READLINE_HIST_SIZE ;
 int memset (int ,int ,int) ;
 int readline_hist ;

void readline_init0(void) {
    memset(MP_STATE_PORT(readline_hist), 0, READLINE_HIST_SIZE * sizeof(const char*));
}
