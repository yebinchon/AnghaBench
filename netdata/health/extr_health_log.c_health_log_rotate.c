
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t health_log_entries_written; char* health_log_filename; int * health_log_fp; int hostname; } ;
typedef TYPE_1__ RRDHOST ;


 int CONFIG_SECTION_HEALTH ;
 scalar_t__ ENOENT ;
 int FILENAME_MAX ;
 scalar_t__ config_get_number (int ,char*,int) ;
 scalar_t__ errno ;
 int error (char*,int ,char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int health_alarm_log_close (TYPE_1__*) ;
 int health_alarm_log_open (TYPE_1__*) ;
 int link (char*,char*) ;
 int snprintfz (char*,int ,char*,char*) ;
 scalar_t__ unlikely (int) ;
 int unlink (char*) ;

inline void health_log_rotate(RRDHOST *host) {
    static size_t rotate_every = 0;

    if(unlikely(rotate_every == 0)) {
        rotate_every = (size_t)config_get_number(CONFIG_SECTION_HEALTH, "rotate log every lines", 2000);
        if(rotate_every < 100) rotate_every = 100;
    }

    if(unlikely(host->health_log_entries_written > rotate_every)) {
        health_alarm_log_close(host);

        char old_filename[FILENAME_MAX + 1];
        snprintfz(old_filename, FILENAME_MAX, "%s.old", host->health_log_filename);

        if(unlink(old_filename) == -1 && errno != ENOENT)
            error("HEALTH [%s]: cannot remove old alarms log file '%s'", host->hostname, old_filename);

        if(link(host->health_log_filename, old_filename) == -1 && errno != ENOENT)
            error("HEALTH [%s]: cannot move file '%s' to '%s'.", host->hostname, host->health_log_filename, old_filename);

        if(unlink(host->health_log_filename) == -1 && errno != ENOENT)
            error("HEALTH [%s]: cannot remove old alarms log file '%s'", host->hostname, host->health_log_filename);


        host->health_log_fp = fopen(host->health_log_filename, "w");

        if(host->health_log_fp)
            fclose(host->health_log_fp);
        else
            error("HEALTH [%s]: cannot truncate health log '%s'", host->hostname, host->health_log_filename);

        host->health_log_fp = ((void*)0);

        host->health_log_entries_written = 0;
        health_alarm_log_open(host);
    }
}
