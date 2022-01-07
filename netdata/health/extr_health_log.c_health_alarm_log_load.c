
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* health_log_filename; int hostname; scalar_t__ health_log_entries_written; } ;
typedef TYPE_1__ RRDHOST ;
typedef int FILE ;


 int FILENAME_MAX ;
 int error (char*,int ,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int health_alarm_log_close (TYPE_1__*) ;
 int health_alarm_log_open (TYPE_1__*) ;
 int health_alarm_log_read (TYPE_1__*,int *,char*) ;
 int snprintfz (char*,int ,char*,char*) ;

inline void health_alarm_log_load(RRDHOST *host) {
    health_alarm_log_close(host);

    char filename[FILENAME_MAX + 1];
    snprintfz(filename, FILENAME_MAX, "%s.old", host->health_log_filename);
    FILE *fp = fopen(filename, "r");
    if(!fp)
        error("HEALTH [%s]: cannot open health file: %s", host->hostname, filename);
    else {
        health_alarm_log_read(host, fp, filename);
        fclose(fp);
    }

    host->health_log_entries_written = 0;
    fp = fopen(host->health_log_filename, "r");
    if(!fp)
        error("HEALTH [%s]: cannot open health file: %s", host->hostname, host->health_log_filename);
    else {
        health_alarm_log_read(host, fp, host->health_log_filename);
        fclose(fp);
    }

    health_alarm_log_open(host);
}
