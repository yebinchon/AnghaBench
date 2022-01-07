
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; char* units; char* info; int old_value; int new_value; scalar_t__ last_repeat; int old_value_string; int new_value_string; int updates_id; int updated_by_id; scalar_t__ delay_up_to_timestamp; int delay; int old_status; int new_status; scalar_t__ non_clear_duration; scalar_t__ duration; scalar_t__ when; int source; int exec_code; scalar_t__ recipient; scalar_t__ exec; scalar_t__ exec_run_timestamp; int family; int chart; int name; int alarm_event_id; int alarm_id; int unique_id; } ;
struct TYPE_5__ {scalar_t__ health_default_recipient; scalar_t__ health_default_exec; int hostname; } ;
typedef TYPE_1__ RRDHOST ;
typedef int BUFFER ;
typedef TYPE_2__ ALARM_ENTRY ;


 int HEALTH_ENTRY_FLAG_EXEC_FAILED ;
 int HEALTH_ENTRY_FLAG_NO_CLEAR_NOTIFICATION ;
 int HEALTH_ENTRY_FLAG_PROCESSED ;
 int HEALTH_ENTRY_FLAG_SILENCED ;
 int HEALTH_ENTRY_FLAG_UPDATED ;
 int buffer_rrd_value (int *,int ) ;
 int buffer_sprintf (int *,char*,int ,int ,int ,int ,int ,int ,int ,char*,char*,unsigned long,char*,scalar_t__,scalar_t__,int ,int ,char*,unsigned long,unsigned long,unsigned long,int ,int ,int ,unsigned long,int ,int ,int ,int ,unsigned long,char*) ;
 int buffer_strcat (int *,char*) ;
 int health_string2json (int *,char*,char*,char*,char*) ;
 int rrdcalc_status2string (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void health_alarm_entry2json_nolock(BUFFER *wb, ALARM_ENTRY *ae, RRDHOST *host) {
    buffer_sprintf(wb,
            "\n\t{\n"
                    "\t\t\"hostname\": \"%s\",\n"
                    "\t\t\"unique_id\": %u,\n"
                    "\t\t\"alarm_id\": %u,\n"
                    "\t\t\"alarm_event_id\": %u,\n"
                    "\t\t\"name\": \"%s\",\n"
                    "\t\t\"chart\": \"%s\",\n"
                    "\t\t\"family\": \"%s\",\n"
                    "\t\t\"processed\": %s,\n"
                    "\t\t\"updated\": %s,\n"
                    "\t\t\"exec_run\": %lu,\n"
                    "\t\t\"exec_failed\": %s,\n"
                    "\t\t\"exec\": \"%s\",\n"
                    "\t\t\"recipient\": \"%s\",\n"
                    "\t\t\"exec_code\": %d,\n"
                    "\t\t\"source\": \"%s\",\n"
                    "\t\t\"units\": \"%s\",\n"
                    "\t\t\"when\": %lu,\n"
                    "\t\t\"duration\": %lu,\n"
                    "\t\t\"non_clear_duration\": %lu,\n"
                    "\t\t\"status\": \"%s\",\n"
                    "\t\t\"old_status\": \"%s\",\n"
                    "\t\t\"delay\": %d,\n"
                    "\t\t\"delay_up_to_timestamp\": %lu,\n"
                    "\t\t\"updated_by_id\": %u,\n"
                    "\t\t\"updates_id\": %u,\n"
                    "\t\t\"value_string\": \"%s\",\n"
                    "\t\t\"old_value_string\": \"%s\",\n"
                    "\t\t\"last_repeat\": \"%lu\",\n"
                    "\t\t\"silenced\": \"%s\",\n"
                   , host->hostname
                   , ae->unique_id
                   , ae->alarm_id
                   , ae->alarm_event_id
                   , ae->name
                   , ae->chart
                   , ae->family
                   , (ae->flags & HEALTH_ENTRY_FLAG_PROCESSED)?"true":"false"
                   , (ae->flags & HEALTH_ENTRY_FLAG_UPDATED)?"true":"false"
                   , (unsigned long)ae->exec_run_timestamp
                   , (ae->flags & HEALTH_ENTRY_FLAG_EXEC_FAILED)?"true":"false"
                   , ae->exec?ae->exec:host->health_default_exec
                   , ae->recipient?ae->recipient:host->health_default_recipient
                   , ae->exec_code
                   , ae->source
                   , ae->units?ae->units:""
                   , (unsigned long)ae->when
                   , (unsigned long)ae->duration
                   , (unsigned long)ae->non_clear_duration
                   , rrdcalc_status2string(ae->new_status)
                   , rrdcalc_status2string(ae->old_status)
                   , ae->delay
                   , (unsigned long)ae->delay_up_to_timestamp
                   , ae->updated_by_id
                   , ae->updates_id
                   , ae->new_value_string
                   , ae->old_value_string
                   , (unsigned long)ae->last_repeat
                   , (ae->flags & HEALTH_ENTRY_FLAG_SILENCED)?"true":"false"
    );

    health_string2json(wb, "\t\t", "info", ae->info?ae->info:"", ",\n");

    if(unlikely(ae->flags & HEALTH_ENTRY_FLAG_NO_CLEAR_NOTIFICATION)) {
        buffer_strcat(wb, "\t\t\"no_clear_notification\": true,\n");
    }

    buffer_strcat(wb, "\t\t\"value\":");
    buffer_rrd_value(wb, ae->new_value);
    buffer_strcat(wb, ",\n");

    buffer_strcat(wb, "\t\t\"old_value\":");
    buffer_rrd_value(wb, ae->old_value);
    buffer_strcat(wb, "\n");

    buffer_strcat(wb, "\t}");
}
