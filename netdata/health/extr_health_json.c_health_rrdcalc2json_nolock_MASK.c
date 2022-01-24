#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* units; int rrdcalc_flags; char* info; int options; int /*<<< orphan*/  value; int /*<<< orphan*/  red; int /*<<< orphan*/  green; TYPE_4__* critical; TYPE_3__* warning; TYPE_2__* calculation; int /*<<< orphan*/  before; int /*<<< orphan*/  after; int /*<<< orphan*/  group; scalar_t__ db_before; scalar_t__ db_after; scalar_t__* dimensions; scalar_t__ last_repeat; int /*<<< orphan*/  crit_repeat_every; int /*<<< orphan*/  warn_repeat_every; scalar_t__ delay_up_to_timestamp; int /*<<< orphan*/  delay_last; int /*<<< orphan*/  delay_multiplier; int /*<<< orphan*/  delay_max_duration; int /*<<< orphan*/  delay_down_duration; int /*<<< orphan*/  delay_up_duration; int /*<<< orphan*/  update_every; scalar_t__ next_update; scalar_t__ last_updated; scalar_t__ last_status_change; int /*<<< orphan*/  status; int /*<<< orphan*/  source; scalar_t__ recipient; scalar_t__ exec; TYPE_1__* rrdset; int /*<<< orphan*/  chart; int /*<<< orphan*/  name; scalar_t__ id; } ;
struct TYPE_14__ {scalar_t__ health_default_recipient; scalar_t__ health_default_exec; } ;
struct TYPE_13__ {scalar_t__* parsed_as; scalar_t__* source; } ;
struct TYPE_12__ {scalar_t__* parsed_as; scalar_t__* source; } ;
struct TYPE_11__ {scalar_t__* parsed_as; scalar_t__* source; } ;
struct TYPE_10__ {char* family; } ;
typedef  TYPE_5__ RRDHOST ;
typedef  TYPE_6__ RRDCALC ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int RRDCALC_FLAG_DISABLED ; 
 int RRDCALC_FLAG_NO_CLEAR_NOTIFICATION ; 
 int RRDCALC_FLAG_SILENCED ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static inline void FUNC10(RRDHOST *host, BUFFER *wb, RRDCALC *rc) {
    char value_string[100 + 1];
    FUNC5(value_string, 100, rc->value, rc->units, -1);

    FUNC3(wb,
            "\t\t\"%s.%s\": {\n"
                    "\t\t\t\"id\": %lu,\n"
                    "\t\t\t\"name\": \"%s\",\n"
                    "\t\t\t\"chart\": \"%s\",\n"
                    "\t\t\t\"family\": \"%s\",\n"
                    "\t\t\t\"active\": %s,\n"
                    "\t\t\t\"disabled\": %s,\n"
                    "\t\t\t\"silenced\": %s,\n"
                    "\t\t\t\"exec\": \"%s\",\n"
                    "\t\t\t\"recipient\": \"%s\",\n"
                    "\t\t\t\"source\": \"%s\",\n"
                    "\t\t\t\"units\": \"%s\",\n"
                    "\t\t\t\"info\": \"%s\",\n"
                    "\t\t\t\"status\": \"%s\",\n"
                    "\t\t\t\"last_status_change\": %lu,\n"
                    "\t\t\t\"last_updated\": %lu,\n"
                    "\t\t\t\"next_update\": %lu,\n"
                    "\t\t\t\"update_every\": %d,\n"
                    "\t\t\t\"delay_up_duration\": %d,\n"
                    "\t\t\t\"delay_down_duration\": %d,\n"
                    "\t\t\t\"delay_max_duration\": %d,\n"
                    "\t\t\t\"delay_multiplier\": %f,\n"
                    "\t\t\t\"delay\": %d,\n"
                    "\t\t\t\"delay_up_to_timestamp\": %lu,\n"
                    "\t\t\t\"warn_repeat_every\": \"%u\",\n"
                    "\t\t\t\"crit_repeat_every\": \"%u\",\n"
                    "\t\t\t\"value_string\": \"%s\",\n"
                    "\t\t\t\"last_repeat\": \"%lu\",\n"
                   , rc->chart, rc->name
                   , (unsigned long)rc->id
                   , rc->name
                   , rc->chart
                   , (rc->rrdset && rc->rrdset->family)?rc->rrdset->family:""
                   , (rc->rrdset)?"true":"false"
                   , (rc->rrdcalc_flags & RRDCALC_FLAG_DISABLED)?"true":"false"
                   , (rc->rrdcalc_flags & RRDCALC_FLAG_SILENCED)?"true":"false"
                   , rc->exec?rc->exec:host->health_default_exec
                   , rc->recipient?rc->recipient:host->health_default_recipient
                   , rc->source
                   , rc->units?rc->units:""
                   , rc->info?rc->info:""
                   , FUNC8(rc->status)
                   , (unsigned long)rc->last_status_change
                   , (unsigned long)rc->last_updated
                   , (unsigned long)rc->next_update
                   , rc->update_every
                   , rc->delay_up_duration
                   , rc->delay_down_duration
                   , rc->delay_max_duration
                   , rc->delay_multiplier
                   , rc->delay_last
                   , (unsigned long)rc->delay_up_to_timestamp
                   , rc->warn_repeat_every
                   , rc->crit_repeat_every
                   , value_string
                   , (unsigned long)rc->last_repeat
    );

    if(FUNC9(rc->options & RRDCALC_FLAG_NO_CLEAR_NOTIFICATION)) {
        FUNC4(wb, "\t\t\t\"no_clear_notification\": true,\n");
    }

    if(FUNC0(rc)) {
        if(rc->dimensions && *rc->dimensions)
            FUNC7(wb, "\t\t\t", "lookup_dimensions", rc->dimensions, ",\n");

        FUNC3(wb,
                "\t\t\t\"db_after\": %lu,\n"
                        "\t\t\t\"db_before\": %lu,\n"
                        "\t\t\t\"lookup_method\": \"%s\",\n"
                        "\t\t\t\"lookup_after\": %d,\n"
                        "\t\t\t\"lookup_before\": %d,\n"
                        "\t\t\t\"lookup_options\": \"",
                (unsigned long) rc->db_after,
                (unsigned long) rc->db_before,
                FUNC6(rc->group),
                rc->after,
                rc->before
        );
        FUNC1(wb, rc->options);
        FUNC4(wb, "\",\n");
    }

    if(rc->calculation) {
        FUNC7(wb, "\t\t\t", "calc", rc->calculation->source, ",\n");
        FUNC7(wb, "\t\t\t", "calc_parsed", rc->calculation->parsed_as, ",\n");
    }

    if(rc->warning) {
        FUNC7(wb, "\t\t\t", "warn", rc->warning->source, ",\n");
        FUNC7(wb, "\t\t\t", "warn_parsed", rc->warning->parsed_as, ",\n");
    }

    if(rc->critical) {
        FUNC7(wb, "\t\t\t", "crit", rc->critical->source, ",\n");
        FUNC7(wb, "\t\t\t", "crit_parsed", rc->critical->parsed_as, ",\n");
    }

    FUNC4(wb, "\t\t\t\"green\":");
    FUNC2(wb, rc->green);
    FUNC4(wb, ",\n");

    FUNC4(wb, "\t\t\t\"red\":");
    FUNC2(wb, rc->red);
    FUNC4(wb, ",\n");

    FUNC4(wb, "\t\t\t\"value\":");
    FUNC2(wb, rc->value);
    FUNC4(wb, "\n");

    FUNC4(wb, "\t\t}");
}