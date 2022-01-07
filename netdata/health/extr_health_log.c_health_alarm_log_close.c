
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * health_log_fp; } ;
typedef TYPE_1__ RRDHOST ;


 int fclose (int *) ;

inline void health_alarm_log_close(RRDHOST *host) {
    if(host->health_log_fp) {
        fclose(host->health_log_fp);
        host->health_log_fp = ((void*)0);
    }
}
