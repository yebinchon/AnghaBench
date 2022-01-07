
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SECTION_WEB ;
 long long config_get_number (int ,char*,long long) ;
 int config_set_number (int ,char*,long long) ;
 size_t max_window_size ;

void grouping_init_ses(void) {
    long long ret = config_get_number(CONFIG_SECTION_WEB, "ses max window", (long long)max_window_size);
    if(ret <= 1) {
        config_set_number(CONFIG_SECTION_WEB, "ses max window", (long long)max_window_size);
    }
    else {
        max_window_size = (size_t) ret;
    }
}
