#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {void* families; void* families_pattern; void* hosts; void* hosts_pattern; void* contexts; void* contexts_pattern; void* charts; void* charts_pattern; void* alarms; void* alarms_pattern; } ;
typedef  TYPE_1__ SILENCER ;

/* Variables and functions */
 char* HEALTH_ALARM_KEY ; 
 char* HEALTH_CHART_KEY ; 
 char* HEALTH_CONTEXT_KEY ; 
 char* HEALTH_FAMILIES_KEY ; 
 char* HEALTH_HOST_KEY ; 
 char* HEALTH_TEMPLATE_KEY ; 
 int /*<<< orphan*/  SIMPLE_PATTERN_EXACT ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 void* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

SILENCER *FUNC7(SILENCER *silencer, char *key, char *value) {
    static uint32_t
            hash_alarm = 0,
            hash_template = 0,
            hash_chart = 0,
            hash_context = 0,
            hash_host = 0,
            hash_families = 0;

    if (FUNC6(!hash_alarm)) {
        hash_alarm = FUNC3(HEALTH_ALARM_KEY);
        hash_template = FUNC3(HEALTH_TEMPLATE_KEY);
        hash_chart = FUNC3(HEALTH_CHART_KEY);
        hash_context = FUNC3(HEALTH_CONTEXT_KEY);
        hash_host = FUNC3(HEALTH_HOST_KEY);
        hash_families = FUNC3(HEALTH_FAMILIES_KEY);
    }

    uint32_t hash = FUNC3(key);
    if (FUNC6(silencer == NULL)) {
        if (
                (hash == hash_alarm && !FUNC4(key, HEALTH_ALARM_KEY)) ||
                (hash == hash_template && !FUNC4(key, HEALTH_TEMPLATE_KEY)) ||
                (hash == hash_chart && !FUNC4(key, HEALTH_CHART_KEY)) ||
                (hash == hash_context && !FUNC4(key, HEALTH_CONTEXT_KEY)) ||
                (hash == hash_host && !FUNC4(key, HEALTH_HOST_KEY)) ||
                (hash == hash_families && !FUNC4(key, HEALTH_FAMILIES_KEY))
                ) {
            silencer = FUNC0();
            if(!silencer) {
                FUNC1("Cannot add a new silencer to Netdata");
                return NULL;
            }
        }
    }

    if (hash == hash_alarm && !FUNC4(key, HEALTH_ALARM_KEY)) {
        silencer->alarms = FUNC5(value);
        silencer->alarms_pattern = FUNC2(silencer->alarms, NULL, SIMPLE_PATTERN_EXACT);
    } else if (hash == hash_chart && !FUNC4(key, HEALTH_CHART_KEY)) {
        silencer->charts = FUNC5(value);
        silencer->charts_pattern = FUNC2(silencer->charts, NULL, SIMPLE_PATTERN_EXACT);
    } else if (hash == hash_context && !FUNC4(key, HEALTH_CONTEXT_KEY)) {
        silencer->contexts = FUNC5(value);
        silencer->contexts_pattern = FUNC2(silencer->contexts, NULL, SIMPLE_PATTERN_EXACT);
    } else if (hash == hash_host && !FUNC4(key, HEALTH_HOST_KEY)) {
        silencer->hosts = FUNC5(value);
        silencer->hosts_pattern = FUNC2(silencer->hosts, NULL, SIMPLE_PATTERN_EXACT);
    } else if (hash == hash_families && !FUNC4(key, HEALTH_FAMILIES_KEY)) {
        silencer->families = FUNC5(value);
        silencer->families_pattern = FUNC2(silencer->families, NULL, SIMPLE_PATTERN_EXACT);
    }

    return silencer;
}