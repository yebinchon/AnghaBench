
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* health_log_filename; int hostname; scalar_t__ health_log_fp; } ;
typedef TYPE_1__ RRDHOST ;


 int _IOLBF ;
 int error (char*,int ,char*) ;
 int fclose (scalar_t__) ;
 scalar_t__ fopen (char*,char*) ;
 scalar_t__ setvbuf (scalar_t__,int *,int ,int ) ;

inline int health_alarm_log_open(RRDHOST *host) {
    if(host->health_log_fp)
        fclose(host->health_log_fp);

    host->health_log_fp = fopen(host->health_log_filename, "a");

    if(host->health_log_fp) {
        if (setvbuf(host->health_log_fp, ((void*)0), _IOLBF, 0) != 0)
            error("HEALTH [%s]: cannot set line buffering on health log file '%s'.", host->hostname, host->health_log_filename);
        return 0;
    }

    error("HEALTH [%s]: cannot open health log file '%s'. Health data will be lost in case of netdata or server crash.", host->hostname, host->health_log_filename);
    return -1;
}
