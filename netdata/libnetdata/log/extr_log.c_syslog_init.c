
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_PID ;
 int facility_log ;
 int log_facility_id (int ) ;
 int openlog (int ,int ,int ) ;
 int program_name ;

void syslog_init() {
    static int i = 0;

    if(!i) {
        openlog(program_name, LOG_PID,log_facility_id(facility_log));
        i = 1;
    }
}
